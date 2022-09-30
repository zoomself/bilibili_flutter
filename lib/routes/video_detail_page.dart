import 'package:bilibili_flutter/base/utils/log_utils.dart';
import 'package:bilibili_flutter/base/utils/screen_utils.dart';
import 'package:bilibili_flutter/base/video/classic_video_player.dart';
import 'package:bilibili_flutter/base/net/net_client.dart';
import 'package:bilibili_flutter/custom/CustomSliverPersistentHeaderDelegate.dart';
import 'package:bilibili_flutter/model/video_detail_entity.dart';
import 'package:bilibili_flutter/routes/video_detail_comment_page.dart';
import 'package:bilibili_flutter/routes/video_detail_simple_intro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:video_player/video_player.dart';

import '../base/utils/fetch_video_by_android.dart';
import '../base/video/video_player_param_bean.dart';
import '../base/utils/image_utils.dart';
import '../base/utils/string_utils.dart';
import '../common/constants.dart';
import '../model/flv_video_result_entity.dart';

class VideoDetailPage extends StatefulWidget {
  final int aid;

  const VideoDetailPage({Key? key, required this.aid}) : super(key: key);

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage>  with WidgetsBindingObserver{
  bool isPined = true; //是否固定顶部
  VideoDetailEntity? _detailEntity;
  VideoPlayerParamBean? paramBean;
  late VideoPlayerController _videoPlayerController;


  ///根据aid获取超详细视频信息
  void _getDetailData() {
    //String url="https://api.bilibili.com/x/web-interface/archive/related?aid=${widget.aid}";
    String url =
        "http://api.bilibili.com/x/web-interface/view/detail?aid=${widget.aid}";
    NetClient().get<VideoDetailEntity>(url, onSuccess: (entity) {
      if (mounted) {
        setState(() {
          _detailEntity = entity;
          if (_detailEntity != null) {
            _getVideoStream();
          }
        });
      }
    });
  }

  ///下载缓存
  void _downloadVideo() {
    VideoDetailView? view = _detailEntity?.view;
    if (view != null) {
      FetchVideoByAndroid.downloadVideo(videoId: "${view.bvid}").then((value) {
        LogUtils.log("$value");
        Fluttertoast.showToast(msg: "$value");
      });
    }
  }

  ///获取视频流
  ///字段详细解释
  ///https://github.com/SocialSisterYi/bilibili-API-collect/blob/master/video/videostream_url.md#%E8%A7%86%E9%A2%91%E7%9A%84%E5%8F%96%E6%B5%81web%E7%AB%AF%E5%8F%8AAPP%E7%AB%AF
  void _getVideoStream() {
    String url =
        "http://api.bilibili.com/x/player/playurl?bvid=${_detailEntity?.view?.bvid}&cid=${_detailEntity?.view?.cid}&qn=112&fnval=0&fnver=0&fourk=1";
    NetClient().get<FlvVideoResultEntity>(url, onSuccess: (entity) {
      if (mounted) {
        setState(() {
          paramBean = VideoPlayerParamBean();
          paramBean?.imageUrl = _detailEntity?.view?.pic;
          paramBean?.url = "${entity.durl?[0].url}";
          paramBean?.looping = true;
          paramBean?.playAfterInit = true;
          paramBean?.isFullScreenPlaying = false;
          paramBean?.httpHeaders = Constants.bilibliHeader;
          _initVideoController(paramBean!);
        });
      }
    });
  }

  ///初始化视频控制器
  void _initVideoController(VideoPlayerParamBean paramBean) {
    if (paramBean.url.startsWith("http")) {
      _videoPlayerController = VideoPlayerController.network(paramBean.url,
          httpHeaders: paramBean.httpHeaders);
    } else {
      _videoPlayerController = VideoPlayerController.asset(paramBean.url);
    }
    _videoPlayerController.initialize().then((value) {
      setState(() {
      });
    });
  }

  ///视频播放容器
  Widget getVideoContainer() {
    if (paramBean == null) {
      return ImageUtils.load("${_detailEntity?.view?.pic}", fit: BoxFit.cover);
    } else {
      return ClassicVideoPlayer(
        paramBean: paramBean!,
        videoPlayerController: _videoPlayerController,
      );
    }
  }

  ///顶部视频 appBar
  Widget getTopVideoAppbar() {
    double getHeight() {
      double result = 200;
      VideoDetailViewDimension? dimension = _detailEntity?.view?.dimension;
      if (dimension != null) {
        int? height = dimension.height;
        int? width = dimension.width;
        if (height != null && width != null && height != 0 && width != 0) {
          double rate = width * 1.0 / height;
          result = ScreenUtils.getScreenWidth() / rate;
          //竖屏视频
          if (result > ScreenUtils.getScreenHeight() * 2 / 5) {
            result = ScreenUtils.getScreenHeight() * 2 / 5;
          }
        }
      }

      return result;
    }

    if (isPined) {
      return AppBar(
        leading: Container(),
        leadingWidth: 0,
        centerTitle: true,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light),
        flexibleSpace: SizedBox(
          height: getHeight(),
          width: double.infinity,
          child: getVideoContainer(),
        ),
        //expandedHeight: getHeight(), appbar中没有该属性，所以必须在flexibleSpace 计算给出高度
      );
    }
    return SliverAppBar(
      leading: Container(),
      leadingWidth: 0,
      floating: false,
      snap: false,
      pinned: true,
      centerTitle: true,
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
      flexibleSpace: FlexibleSpaceBar(
        background: getVideoContainer(),
      ),
      expandedHeight: getHeight(),
    );
  }

  ///详情，简介 tab
  Widget getTabView() {
    Widget getView() {
      return DecoratedBox(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey[300]!,
              offset: const Offset(0.0, 1), //阴影y轴偏移量
              blurRadius: 10, //阴影模糊程度
              spreadRadius: 1 //阴影扩散程度
              )
        ]),
        child: Container(
          width: double.infinity,
          height: 40,
          color: Colors.white,
          child: Row(
            children: [
              TabBar(
                isScrollable: true,
                padding: const EdgeInsets.only(left: 30),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 2,
                labelColor: Colors.pink,
                unselectedLabelColor: Colors.black,
                tabs: [
                  const Tab(
                    child: Text(
                      "简介",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                        "评论 ${StringUtils.getFriendNum(_detailEntity?.reply?.page?.acount)}",
                        style: const TextStyle(fontSize: 12)),
                  )
                ],
              ),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(right: 16),
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 4, bottom: 4),
                      child: Text(
                        "点我发弹幕",
                        style: TextStyle(color: Colors.grey[500], fontSize: 11),
                      ),
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      );
    }

    if (isPined) {
      return getView();
    }
    return SliverPersistentHeader(
      delegate: CustomSliverPersistentHeaderDelegate(
        40,
        40,
        getView(),
      ),
      pinned: true,
    );
  }

  ///当视频正在播放时的视图（视频播放器不可以上滑到屏幕外去，固定在顶部）
  Widget getPinedBody() {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          getTopVideoAppbar(),
          getTabView(),
          Expanded(
              child: TabBarView(
                children: [
                  VideoDetailSimpleIntroPage(
                    detailEntity: _detailEntity!,
                  ),
                  VideoDetailCommentPage(
                    detailEntity: _detailEntity!,
                  ),
                ],
              ))
          ,
        ],
      ),
    );
  }

  ///当视频没有在播放时的视图（视频播放器可以上滑到屏幕外去）
  Widget getUnPinedBody() {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        body: TabBarView(
          children: [
            VideoDetailSimpleIntroPage(
              detailEntity: _detailEntity!,
            ),
            VideoDetailCommentPage(
              detailEntity: _detailEntity!,
            ),
          ],
        ),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            getTopVideoAppbar(),
            getTabView(),
          ];
        },
      ),
    );
  }

  Widget getBody() {
    if (_detailEntity == null) {
      return const Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
        ),
      );
    }
    if (isPined) {
      return getPinedBody();
    }
    return getUnPinedBody();
  }

  @override
  void initState() {
    super.initState();
    ScreenUtils.forcePortrait();
    _getDetailData();
  }



  @override
  void dispose() {
    _videoPlayerController.dispose();
    ScreenUtils.forceLandscapeOrPortrait();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }
}
