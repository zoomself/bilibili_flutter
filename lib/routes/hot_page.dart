import 'package:bilibili_flutter/base/net/net_client.dart';
import 'package:bilibili_flutter/routes/video_detail_page.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../base/utils/log_utils.dart';
import '../model/video_entity.dart';
import '../view/video_list_item_page.dart';

class HotPage extends StatefulWidget {
  const HotPage({Key? key}) : super(key: key);

  @override
  State<HotPage> createState() => _HotPageState();
}

class _HotPageState extends State<HotPage> with AutomaticKeepAliveClientMixin {
  late EasyRefreshController _refreshController;
  final List<VideoList> _dataList = [];

  final int _pageSize = 10;
  int _currentPage = 1;
  bool _canLoadMore = true;

  void _refresh() {
    _currentPage = 1;
    _canLoadMore = true;
    _getData();
  }

  void _loadMore() {
    if (_canLoadMore) {
      _currentPage++;
      _getData();
    } else {
      _refreshController.finishLoad(IndicatorResult.noMore);
    }
  }

  ///获取"综合热门"视频 (GET 返回Json 无需Cookie)
  void _getData() {
    String url =
        "https://api.bilibili.com/x/web-interface/popular?ps=$_pageSize&pn=$_currentPage";
    NetClient().get<VideoEntity>(url, onSuccess: (entity) {
      if (mounted) {
        setState(() {
          List<VideoList>? list = entity.list;
          if (list != null) {
            if (list.length < _pageSize) {
              _canLoadMore = false;
            }
            if (_currentPage == 1) {
              _dataList.clear();
            }
            _dataList.addAll(list);
          }
          if (_currentPage == 1) {
            _refreshController.finishRefresh();
          } else {
            _refreshController.finishLoad();
          }
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshController = EasyRefreshController(
        controlFinishRefresh: true, controlFinishLoad: true);
    _refresh();
  }

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  Widget getListBody() {
    return ListView.separated(
      //itemExtent: getListItemHeight(),
      itemCount: _dataList.length,
      itemBuilder: (context, index) {
        return InkWell(
            child: VideoListItemView(videoList: _dataList[index]),
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
      margin: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      child: getListBody(),
      //child: getListBody(),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body:EasyRefresh(
        controller: _refreshController,
        onLoad: _loadMore,
        onRefresh: _refresh,
        child: getBody(),
      ) ,
    );

  }

  @override
  bool get wantKeepAlive => true;
}
