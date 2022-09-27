import 'package:bilibili_flutter/routes/region_video_rank_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/region_constants.dart';

class RankPage extends StatefulWidget {
  const RankPage({Key? key}) : super(key: key);

  @override
  State<RankPage> createState() => _RankPageState();
}

class _RankPageState extends State<RankPage> with AutomaticKeepAliveClientMixin {
  int totalLength=0;

  List<Widget> getTabs() {
    List<Widget> list = [];
    for (int region in RegionConstants.regionList) {
      String? name = RegionConstants.regionNameMap[region];
      list.add(Tab(child: Text(name!)));
    }
    return list;
  }

  List<Widget> getBodys() {
    List<Widget> list = [];
    for (int region in RegionConstants.regionList) {
      list.add(RegionVideoRankListPage(rid: region));
    }
    return list;
  }

  ///做一个延时操作（解决tabBaView release模式下白屏的问题）
  ///做一个模拟数据加载操作
  void _getData(){
    Future.delayed(const Duration(milliseconds: 100)).then((value){
      if(mounted){
        setState(() {
          totalLength=RegionConstants.regionList.length;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }


  @override
  Widget build(BuildContext context) {
    super.build(context);

    if(totalLength==0){
      return Scaffold(
        appBar: AppBar( elevation: 0,
          toolbarHeight: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark),
          backgroundColor: Colors.white,),
        body: const Center(
          child: CircularProgressIndicator(strokeWidth: 2,),
        ),
      );
    }

    return DefaultTabController(
        length: totalLength,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 0,
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark),
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kTextTabBarHeight),
              child: TabBar(
                isScrollable: true,
                indicatorWeight: 2,
                indicatorPadding: const EdgeInsets.only(top: 42),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: const Color(0xff1A1A1A),
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                labelColor: const Color(0xff1A1A1A),
                unselectedLabelColor: const Color(0xff999999),
                indicator: BoxDecoration(
                  color: const Color(0xff1A1A1A),
                  borderRadius: BorderRadius.circular(4),
                ),
                tabs: getTabs(),
                onTap: (index) {
                  //_pageController.jumpToPage(index);
                },
              ),
            ),
          ),
          body: TabBarView(children: getBodys()),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
