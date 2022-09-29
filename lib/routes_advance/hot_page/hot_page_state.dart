import 'package:bilibili_flutter/routes_advance/loading_status.dart';

import '../../model/video_entity.dart';

class HotPageState {
  List<VideoList>? dataList;

  LoadingStatus? loadingStatus;

  HotPageState({this.loadingStatus, this.dataList});

  HotPageState init() {
    return HotPageState();
  }

  HotPageState refreshSuccess(List<VideoList> list) {
    return HotPageState(
        loadingStatus: LoadingStatus.refreshSuccess, dataList: list);
  }

  HotPageState loadMoreSuccess(List<VideoList> list) {
    return HotPageState(
        loadingStatus: LoadingStatus.loadMoreSuccess, dataList: list);
  }
}
