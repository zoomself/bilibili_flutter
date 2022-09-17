import 'package:bilibili_flutter/base/net/net_client.dart';
import 'package:bilibili_flutter/model/video_comment_wrapper_entity.dart';
import 'package:bilibili_flutter/model/video_detail_entity.dart';
import 'package:bilibili_flutter/view/video_comment_item_view.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/video_comment_entity.dart';

class VideoDetailCommentPage extends StatefulWidget {
  final VideoDetailEntity detailEntity;

  const VideoDetailCommentPage({Key? key, required this.detailEntity})
      : super(key: key);

  @override
  State<VideoDetailCommentPage> createState() => _VideoDetailCommentPageState();
}

class _VideoDetailCommentPageState extends State<VideoDetailCommentPage> {
  final int _pageSize=20;
  int _currentPage = 1;
  bool _canLoadMore = true;
  List<VideoCommentEntity> _dataList=[];
  late EasyRefreshController _controller;

  void _refresh() {
    _currentPage = 1;
    _canLoadMore = true;
    _getData();
  }

  void _loadMore() {
    if (!_canLoadMore) {
      Fluttertoast.showToast(msg: "暂无更多数据");
      return;
    }
    _currentPage++;
    _getData();
  }

  void _getData() {
    //https://api.bilibili.com/x/v2/reply/main?next=1&type=1&oid=473082515&mode=3
    String url =
        "https://api.bilibili.com/x/v2/reply/main?next=$_currentPage&type=1&oid=${widget.detailEntity.view?.aid}&mode=3";

    NetClient().get<VideoCommentWrapperEntity>(url, onSuccess: (entity) {
      if (mounted) {
        setState(() {
          List<VideoCommentEntity>? replies = entity.replies;
          if(replies!=null){
            if(_currentPage==1){
              _dataList.clear();
            }
            if(replies.length<_pageSize){
              _canLoadMore=false;
            }
            _dataList.addAll(replies);
            if(_currentPage==1){
              _controller.finishRefresh();
            }else{
              _controller.finishLoad();
            }
          }
        });
      }
    });
  }

  Widget getEmptyView() {
    return const Center(
      child: Text("加载评论.."),
    );
  }

  Widget getListView() {
    if (_dataList.isEmpty) {
      return getEmptyView();
    }

    return ListView.separated(
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return VideoCommentItemView(
            videoCommentEntity: _dataList[index],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 0.2,
            height: 0.2,
          );
        },
        itemCount: _dataList.length);
  }

  @override
  void initState() {
    super.initState();
    _controller = EasyRefreshController(
        controlFinishRefresh: true, controlFinishLoad: true);
    _refresh();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        controller: _controller,
        onRefresh: () {
          _refresh();
        },
        onLoad: () {
          _loadMore();
        },
        child: getListView());
  }
}
