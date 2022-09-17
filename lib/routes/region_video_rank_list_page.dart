import 'dart:math';

import 'package:bilibili_flutter/base/utils/screen_utils.dart';
import 'package:bilibili_flutter/routes/video_detail_page.dart';
import 'package:bilibili_flutter/view/video_list_item_page.dart';
import 'package:flutter/material.dart';
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

class _RegionVideoRankListPageState extends State<RegionVideoRankListPage>
    with AutomaticKeepAliveClientMixin {
  double crossAxisSpacing = 8;
  double maxCrossAxisExtent = 300; //最大宽度
  int minCrossAxisCount = 2;
  double childAspectRatio = 1.0; //宽高比


  ///grid 模式每个item的高度
  double getGridItemHeight() {
    double screenWidth = ScreenUtils.getScreenWidth();
    int count =
        max(minCrossAxisCount, (screenWidth / maxCrossAxisExtent).ceil());
    double itemWidth = (screenWidth - (count + 1) * crossAxisSpacing) / count;
    double itemHeight = itemWidth / childAspectRatio;
    return itemHeight;
  }


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
  void dispose() {
    super.dispose();
  }

  ///网格形式
  Widget getGridBody() {
    //WithMaxCrossAxisExtent这种方式更科学，可以无缝切换到横屏或者大屏上去
    return GridView.builder(
        itemCount: _dataList.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: maxCrossAxisExtent,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: crossAxisSpacing,
            childAspectRatio: childAspectRatio),
        itemBuilder: (context, index) {
          return InkWell(
            child: VideoGridItemView(
              videoList: _dataList[index],
              itemHeight: getGridItemHeight(),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return VideoDetailPage(
                  aid: _dataList[index].aid!,
                );
              }));
            },
          );
        });
  }

  Widget getListBody() {
    return ListView.separated(
      itemCount: _dataList.length,
      itemBuilder: (context, index) {
        return InkWell(
            child: VideoListItemView(
              videoList: _dataList[index]
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return VideoDetailPage(
                  aid: _dataList[index].aid!,
                );
              }));
            });
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          thickness: 0.5,
          height: 0.5,
        );
      },
    );
  }

  Widget getBody() {
    if (_dataList.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.pink,
          strokeWidth: 2,
        ),
      );
    }
    return Container(
      color: const Color(0xffF7F7F7),
      margin: EdgeInsets.only(
          left: crossAxisSpacing,
          right: crossAxisSpacing,
          top: crossAxisSpacing),
      child: getGridBody(),
      //child: getListBody(),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(body: getBody());
  }

  @override
  bool get wantKeepAlive => true;
}
