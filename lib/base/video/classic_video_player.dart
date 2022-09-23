import 'package:bilibili_flutter/base/utils/image_utils.dart';
import 'package:bilibili_flutter/base/utils/log_utils.dart';
import 'package:bilibili_flutter/base/utils/string_utils.dart';
import 'package:bilibili_flutter/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:video_player/video_player.dart';
import '../../custom/no_margin_slider_track_shape.dart';
import 'video_player_param_bean.dart';

class ClassicVideoPlayer extends StatefulWidget {
  final VideoPlayerParamBean paramBean;

  const ClassicVideoPlayer({Key? key, required this.paramBean})
      : super(key: key);

  @override
  State<ClassicVideoPlayer> createState() => _ClassicVideoPlayerState();
}

class _ClassicVideoPlayerState extends State<ClassicVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  bool showController = false; //是否显示控制层

  ///初始化视频控制器
  void _initVideoController() {
    if (widget.paramBean.url.startsWith("http")) {
      _videoPlayerController = VideoPlayerController.network(
          widget.paramBean.url,
          httpHeaders: widget.paramBean.httpHeaders);
    } else {
      _videoPlayerController =
          VideoPlayerController.asset(widget.paramBean.url);
    }
    _videoPlayerController.initialize().then((value) {
      setState(() {});
    });
    _videoPlayerController.addListener(() {
      setState(() {});
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
    LogUtils.log("aspectRatio:${_videoPlayerController.value.aspectRatio}");
    LogUtils.log("size:${_videoPlayerController.value.size}");
    return InkWell(
      child: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: VideoPlayer(_videoPlayerController),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          showController = !showController;
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
                  margin: const EdgeInsets.only(left: 8,right: 8),
                  child: SliderTheme(
                      data:  const SliderThemeData(
                          trackHeight: 2,
                          inactiveTrackColor: Color(0xff1a1a1a),
                          activeTrackColor: Colors.white,
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 0),//去除两边的间隙
                          //trackShape: NoMarginSliderTrackShape(addHeight: 0),//去除两边的间隙
                          trackShape: RoundedRectSliderTrackShape(),
                          thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 6.0, disabledThumbRadius: 6.0),
                          thumbColor: Colors.white),
                      child: Slider(
                          max: _videoPlayerController
                              .value.duration.inMilliseconds
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
            Container(
              margin: const EdgeInsets.only(left: 16),
              child: InkWell(
                child: Image.asset(
                  Assets.imagesIcPlayerFullScreen,
                  width: 24,
                  height: 24,
                  color: Colors.white,
                ),
                onTap: () {
                  Fluttertoast.showToast(msg: "全屏");
                },
              ),
            ),
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
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 0),//去除两边的间隙
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
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return getCover();
  }
}
