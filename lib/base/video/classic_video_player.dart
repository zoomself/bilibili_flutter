import 'dart:async';

import 'package:bilibili_flutter/base/utils/image_utils.dart';
import 'package:bilibili_flutter/base/utils/string_utils.dart';
import 'package:bilibili_flutter/base/video/classic_full_screen_play_page.dart';
import 'package:bilibili_flutter/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../utils/screen_utils.dart';
import 'video_player_param_bean.dart';

class ClassicVideoPlayer extends StatefulWidget {
  final VideoPlayerParamBean paramBean;

  VideoPlayerController? videoPlayerController;

  ClassicVideoPlayer(
      {Key? key, required this.paramBean, this.videoPlayerController})
      : super(key: key);

  @override
  State<ClassicVideoPlayer> createState() => _ClassicVideoPlayerState();
}

class _ClassicVideoPlayerState extends State<ClassicVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  bool showController = false; //是否显示控制层
  bool canFullScreen=false; //是否可以全屏


  ///跳转全屏播放
  void _goFullScreenPlay() {
    if(!canFullScreen){
      return;
    }
    widget.paramBean.isFullScreenPlaying = true;
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return ClassicFullScreenPlayingPage(
          paramBean: widget.paramBean,
          playerController: _videoPlayerController);
    }));
    //做一个延时处理 旋转屏幕时显得更丝滑
    Future.delayed(const Duration(milliseconds: 200)).then((value) {
      ScreenUtils.forceLandscape();
    });

  }

  ///退出全屏播放
  void _quitFullScreenPlay() {
    widget.paramBean.isFullScreenPlaying = false;
    ScreenUtils.forcePortrait();
    Navigator.of(context).pop();
  }


  ///初始化视频控制器
  void _initVideoController() {
    if (widget.videoPlayerController != null) {
      canFullScreen=true;
      _videoPlayerController = widget.videoPlayerController!;
    } else {
      canFullScreen=false;
      if (widget.paramBean.url.startsWith("http")) {
        _videoPlayerController = VideoPlayerController.network(
            widget.paramBean.url,
            httpHeaders: widget.paramBean.httpHeaders);
      } else {
        _videoPlayerController =
            VideoPlayerController.asset(widget.paramBean.url);
      }
      _videoPlayerController.initialize().then((value) {
        setState(() {
        });
      });
    }

    _videoPlayerController.addListener(() {
      setState(() {

      });
    });
    _videoPlayerController.setLooping(widget.paramBean.looping);
    if (widget.paramBean.playAfterInit) {
      _videoPlayerController.play();
    }
  }



  ///空闲未初始化视图
  Widget getIdleView() {
    return ImageUtils.load("${widget.paramBean.imageUrl}", fit: BoxFit.cover);
  }

  ///视频播放异常视图
  Widget getErrorView() {
    String? error = _videoPlayerController.value.errorDescription;
    return Center(
      child: Text(
        "$error",
        style: const TextStyle(color: Colors.red),
      ),
    );
  }

  ///视频播放视图
  Widget getVideoView() {
    /*LogUtils.log("aspectRatio:${_videoPlayerController.value.aspectRatio}");
    LogUtils.log("size:${_videoPlayerController.value.size}");*/
    return InkWell(
      child: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Align(
          alignment: widget.paramBean.isFullScreenPlaying
              ? AlignmentDirectional.center
              : AlignmentDirectional.bottomCenter,
          //竖屏时 由于使用SliverAppBar 时哪怕是计算出和视频一样的比例高度，还是不能填满控件
          child: AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: VideoPlayer(_videoPlayerController),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          showController = !showController;
          if(showController){
            Future.delayed(const Duration(seconds: 2)).then((value){
              showController=false;
            });

          }
        });
      },
    );
  }

  ///视频播放控制视图
  Widget getControllerView() {
    ///顶部控制区域
    Widget getTopView() {
      return Container(
        height: 80,
      );
    }

    ///中部控制区域
    Widget getMiddleView() {
      return Container();
    }

    ///底部控制区域
    Widget getBottomControllerView() {
      return Container(
        height: 40,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
                child: Image.asset(
                  _videoPlayerController.value.isPlaying
                      ? Assets.imagesIcPlayerPause
                      : Assets.imagesIcPlayerPlay,
                  width: 24,
                  height: 24,
                  color: Colors.white,
                ),
                onTap: () {
                  if (_videoPlayerController.value.isPlaying) {
                    _videoPlayerController.pause();
                  } else {
                    _videoPlayerController.play();
                  }
                }),

            //进度条
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(left: 8, right: 8),
              child: SliderTheme(
                  data: const SliderThemeData(
                      trackHeight: 2,
                      inactiveTrackColor: Color(0xff1a1a1a),
                      activeTrackColor: Colors.white,
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 0),
                      //去除两边的间隙
                      //trackShape: NoMarginSliderTrackShape(addHeight: 0),//去除两边的间隙
                      trackShape: RoundedRectSliderTrackShape(),
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 6.0, disabledThumbRadius: 6.0),
                      thumbColor: Colors.white),
                  child: Slider(
                      max: _videoPlayerController.value.duration.inMilliseconds
                          .toDouble(),
                      value: _videoPlayerController
                          .value.position.inMilliseconds
                          .toDouble(),
                      onChanged: (v) {
                        _videoPlayerController
                            .seekTo(Duration(milliseconds: v.toInt()));
                      })),
            )),

            //时间
            Text(
              "${StringUtils.getFriendDuration(_videoPlayerController.value.position.inMilliseconds ~/ 1000)}/${StringUtils.getFriendDuration(_videoPlayerController.value.duration.inMilliseconds ~/ 1000)}",
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
            //全屏
            Visibility(visible: canFullScreen,child: Container(
              margin: const EdgeInsets.only(left: 16),
              child: InkWell(
                child: Image.asset(
                  widget.paramBean.isFullScreenPlaying
                      ? Assets.imagesIcPlayerQuitFullScreen
                      : Assets.imagesIcPlayerFullScreen,
                  width: 24,
                  height: 24,
                  color: Colors.white,
                ),
                onTap: () {
                  if (!widget.paramBean.isFullScreenPlaying) {
                    _goFullScreenPlay();
                  } else {
                    _quitFullScreenPlay();
                  }
                },
              ),
            ),),
          ],
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Visibility(
        visible: showController,
        child: Column(
          children: [
            getTopView(),
            Expanded(child: getMiddleView()),
            getBottomControllerView(),
          ],
        ),
      ),
    );
  }

  ///底部播放进度条
  Widget getBottomPlayProgressView() {
    return Visibility(
      visible: !showController,
      child: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: SizedBox(
          height: 2,
          child: SliderTheme(
              data: const SliderThemeData(
                  trackHeight: 2,
                  inactiveTrackColor: Colors.white,
                  activeTrackColor: Colors.pink,
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 0),
                  //去除两边的间隙
                  //trackShape: NoMarginSliderTrackShape(addHeight: 0),//去除两边的间隙
                  trackShape: RoundedRectSliderTrackShape(),
                  thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 0.0, disabledThumbRadius: 0.0),
                  thumbColor: Colors.white),
              child: Slider(
                  max: _videoPlayerController.value.duration.inMilliseconds
                      .toDouble(),
                  value: _videoPlayerController.value.position.inMilliseconds
                      .toDouble(),
                  onChanged: (v) {
                    _videoPlayerController
                        .seekTo(Duration(milliseconds: v.toInt()));
                  })),
        ),
      ),
    );
  }

  Widget getPlayingView() {
    return Stack(
      children: [
        getVideoView(),
        getControllerView(),
        getBottomPlayProgressView()
      ],
    );
  }

  Widget getCover() {
    if (!_videoPlayerController.value.isInitialized) {
      return getIdleView();
    }
    if (_videoPlayerController.value.hasError) {
      return getErrorView();
    }
    return getPlayingView();
  }

  @override
  void initState() {
    super.initState();
    _initVideoController();
  }

  @override
  void dispose() {
    if(!canFullScreen){
      _videoPlayerController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return getCover();
  }
}
