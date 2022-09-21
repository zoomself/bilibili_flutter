import 'package:bilibili_flutter/base/net/net_client.dart';
import 'package:bilibili_flutter/base/utils/fetch_video_by_android.dart';
import 'package:bilibili_flutter/base/utils/log_utils.dart';
import 'package:bilibili_flutter/delegate/CustomSliverPersistentHeaderDelegate.dart';
import 'package:bilibili_flutter/model/video_detail_entity.dart';
import 'package:bilibili_flutter/routes/video_detail_comment_page.dart';
import 'package:bilibili_flutter/routes/video_detail_simple_intro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../base/utils/string_utils.dart';

class VideoDetailPage extends StatefulWidget {
  final int aid;

  const VideoDetailPage({Key? key, required this.aid}) : super(key: key);

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  VideoDetailEntity? _detailEntity;

  ///根据aid获取超详细视频信息
  void _getData() {
    //String url="https://api.bilibili.com/x/web-interface/archive/related?aid=${widget.aid}";
    String url =
        "http://api.bilibili.com/x/web-interface/view/detail?aid=${widget.aid}";
    NetClient().get<VideoDetailEntity>(url, onSuccess: (entity) {
      if (mounted) {
        setState(() {
          _detailEntity = entity;
          if(_detailEntity!=null){
            VideoDetailView? view = _detailEntity?.view;
            if(view!=null){
              FetchVideoByAndroid.getVideoInfo(videoId: "${view.bvid}").then((value)  {
                LogUtils.log("$value");
                Fluttertoast.showToast(msg: "$value");
              });
            }
          }
        });
      }
    });
  }

  ///顶部视频 appBar
  Widget getTopVideoAppbar() {
    return SliverAppBar(
      floating: false,
      snap: false,
      pinned: true,
      centerTitle: true,
      title: getTitle(),
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
      flexibleSpace: FlexibleSpaceBar(
        //stretchModes: const <StretchMode>[StretchMode.zoomBackground,StretchMode.fadeTitle,StretchMode.blurBackground,],
        background: Image.network(
          "${_detailEntity?.view?.pic!}",
          fit: BoxFit.cover,
        ),
      ),
      expandedHeight: 200,
    );
  }

  ///详情，简介
  Widget getTabView() {
    return SliverPersistentHeader(
      delegate: CustomSliverPersistentHeaderDelegate(
          40,
          40,
          DecoratedBox(decoration:  BoxDecoration(boxShadow:[
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
                              style:
                              TextStyle(color: Colors.grey[500], fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),),

      ),
      pinned: true,
    );
  }

  Widget getTitle() {
    //bool show=_scrollController.offset > 200 - kToolbarHeight;
    //bool show = false;
    //String text = show ? "立即播放" : "";
    return const Text(
      "",
      style: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
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
      //下面的方式导致pageView里面的listview 滑动appbar不会联动
      /*child: CustomScrollView(
        slivers: [
          getTopVideoAppbar(),
          getTabView(),
          const SliverFillRemaining(
              hasScrollBody: true,
              child: TabBarView(
                children: [
                  VideoDetailSimpleIntroPage(),
                  VideoDetailSimpleIntroPage(),
                ],
              )),
        ],
      ),*/
    );
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }
}
