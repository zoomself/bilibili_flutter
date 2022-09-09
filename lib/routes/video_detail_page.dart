import 'package:bilibili_flutter/delegate/CustomSliverPersistentHeaderDelegate.dart';
import 'package:bilibili_flutter/routes/video_detail_simple_intro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/video_entity.dart';

class VideoDetailPage extends StatefulWidget {
  final VideoList videoList;

  const VideoDetailPage({Key? key, required this.videoList}) : super(key: key);

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
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
          widget.videoList.pic!,
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
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: Row(
              children: [
                const TabBar(
                  isScrollable: true,
                  padding: EdgeInsets.only(left: 30),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 2,
                  labelColor: Colors.pink,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Text(
                        "简介",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Tab(
                      child: Text("评论", style: TextStyle(fontSize: 12)),
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
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 4, bottom: 4),
                        child: Text(
                          "点我发弹幕",
                          style:
                              TextStyle(color: Colors.grey[800], fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          )),
      pinned: true,
    );
  }

  Widget getTitle() {
    //bool show=_scrollController.offset > 200 - kToolbarHeight;
    bool show = false;
    String text = show ? "立即播放" : "";
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          body: const TabBarView(
            children: [
              VideoDetailSimpleIntroPage(),
              VideoDetailSimpleIntroPage(),
            ],
          ),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              getTopVideoAppbar(),
              getTabView(),
            ];
          },
        ),
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
      ),
    );
  }
}
