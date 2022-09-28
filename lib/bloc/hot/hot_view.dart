import 'package:bilibili_flutter/base/utils/log_utils.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../routes/video_detail_page.dart';
import '../../view/video_list_item_page.dart';
import 'hot_bloc.dart';
import 'hot_event.dart';
import 'hot_state.dart';

class HotPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HotBloc(HotState([])),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }


  Widget _buildPage(BuildContext context) {
    LogUtils.log("_buildPage");
    final bloc = BlocProvider.of<HotBloc>(context);

    Widget getListBody(HotState state) {
      return ListView.separated(
        //itemExtent: getListItemHeight(),
        itemCount: state.dataList.length,
        itemBuilder: (context, index) {
          return InkWell(
              child: VideoListItemView(videoList: state.dataList[index]),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return VideoDetailPage(
                    aid: state.dataList[index].aid!,
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

    Widget getBody(){
      return BlocBuilder<HotBloc, HotState>(
          bloc: bloc, buildWhen:(p,c){
            return true;
      },builder: (context, state) {
        if(state.dataList==null||state.dataList.isEmpty){
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
          child: getListBody(state),
          //child: getListBody(),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body:EasyRefresh(
        onLoad: (){
          bloc.add(LoadMoreEvent());
        },
        onRefresh: (){
          bloc.add(RefreshEvent());
        },
        child: getBody(),
      ) ,
    );



  }
}
