import 'package:bilibili_flutter/base/utils/log_utils.dart';
import 'package:bilibili_flutter/routes_advance/loading_status.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/video_entity.dart';
import '../../routes/video_detail_page.dart';
import '../../view/video_list_item_page.dart';
import 'hot_page_bloc.dart';
import 'hot_page_event.dart';
import 'hot_page_state.dart';

class HotPage extends StatelessWidget {
  HotPage({super.key});

  final EasyRefreshController _refreshController = EasyRefreshController(
      controlFinishRefresh: true, controlFinishLoad: true);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HotPageBloc(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget getListBody(List<VideoList> dataList) {
    return ListView.separated(
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        return InkWell(
            child: VideoListItemView(videoList: dataList[index]),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return VideoDetailPage(
                  aid: dataList[index].aid!,
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

  Widget getBody(HotPageState state) {

    if (state.dataList == null || state.dataList!.isEmpty) {
      if(state.loadingStatus==LoadingStatus.refreshSuccess){
        return const Center(child: Text("暂无数据"),);
      }
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
      child: getListBody(state.dataList!),
      //child: getListBody(),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<HotPageBloc>(context);
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark),
          elevation: 0,
          toolbarHeight: 0,
        ),
        body: BlocBuilder<HotPageBloc, HotPageState>(
          builder: (context, state) {
            if(state.loadingStatus==LoadingStatus.refreshSuccess){
              _refreshController.finishRefresh();
            }
            if(state.loadingStatus==LoadingStatus.loadMoreSuccess){
              _refreshController.finishLoad();
            }
            return EasyRefresh(
              controller: _refreshController,
              onLoad: () {
                bloc.add(LoadMoreDataEvent());
              },
              onRefresh: () {
                bloc.add(RefreshDataEvent());
              },
              child: getBody(bloc.state),
            );
          },
        ));
  }
}
