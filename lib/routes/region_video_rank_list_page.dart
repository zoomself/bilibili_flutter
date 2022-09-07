import 'dart:math';

import 'package:bilibili_flutter/base/utils/log_utils.dart';
import 'package:bilibili_flutter/base/utils/screen_utils.dart';
import 'package:bilibili_flutter/routes/video_detail_page.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../base/net/net_client.dart';
import '../model/video_entity.dart';
import '../view/video_grid_item_view.dart';

///分区排行榜 视频列表页
class RegionVideoRankListPage extends StatefulWidget {
  final int rid;

  const RegionVideoRankListPage({Key? key, required this.rid})
      : super(key: key);

  @override
  State<RegionVideoRankListPage> createState() =>
      _RegionVideoRankListPageState();
}

class _RegionVideoRankListPageState extends State<RegionVideoRankListPage> {
  double crossAxisSpacing = 8;
  double maxCrossAxisExtent = 300;  //最大宽度
  int minCrossAxisCount = 2;
  double childAspectRatio = 1.0;    //宽高比

  double getItemHeight() {
    double screenWidth=ScreenUtils.getScreenWidth();
    int count=max(minCrossAxisCount,(screenWidth/maxCrossAxisExtent).ceil());
    double itemWidth= (screenWidth -
            (count + 1) * crossAxisSpacing) /
        count;
    double itemHeight=itemWidth/childAspectRatio;
    return itemHeight;
  }


  late EasyRefreshController _refreshController;
  final List<VideoList> _dataList = [];

  ///获取区域排行数据
  void _getData() {
    String url =
        "https://api.bilibili.com/x/web-interface/ranking/v2?rid=${widget.rid}&type=all";
    NetClient().get<VideoEntity>(url, onSuccess: (entity) {
      if (mounted) {
        setState(() {
          List<VideoList>? list = entity.list;
          if (list != null) {
            _dataList.clear();
            _dataList.addAll(list);
          }
          _refreshController.finishRefresh();
        });
      }
    });
  }


  @override
  void initState() {
    super.initState();
    _refreshController = EasyRefreshController(controlFinishRefresh: true);
    _getData();
  }

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }


  ///网格形式
  Widget getGridBody() {
    //WithMaxCrossAxisExtent这种方式更科学，可以无缝切换到横屏或者大屏上去
    return GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: maxCrossAxisExtent,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: crossAxisSpacing,
        childAspectRatio: childAspectRatio
    ), itemBuilder: (context, index) {
      return InkWell(child: VideoGridItemView(
        videoList: _dataList[index],itemHeight: getItemHeight(),
      ),onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(context){
          return VideoDetailPage(videoList: _dataList[index],);
        } ));
      },);
    });
  }


  Widget getBody(){
    if(_dataList.isEmpty){
      return const Center(
        child: CircularProgressIndicator(color: Colors.pink,strokeWidth: 2,),
      );
    }
    return Container(
      color: const Color(0xffF7F7F7),
      margin: EdgeInsets.only(
          left: crossAxisSpacing,
          right: crossAxisSpacing,
          top: crossAxisSpacing),
      child: getGridBody(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: getBody());
  }
}
