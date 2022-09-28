import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../base/net/net_client.dart';
import '../../model/video_entity.dart';
import 'hot_event.dart';
import 'hot_state.dart';

class HotBloc extends Bloc<HotEvent, HotState> {
  final int _pageSize = 10;
  int _currentPage = 1;
  bool _canLoadMore = true;
  final List<VideoList> _dataList = [];

  HotBloc(HotState hotState) : super(hotState) {
    on<RefreshEvent>(_refresh);
    on<LoadMoreEvent>(_loadMore);
    on<GetDataSuccessEvent>((event,emit){
      emit(HotState(_dataList));
    });

    add(RefreshEvent());
  }



  void _refresh( event,  emit) async {
    _currentPage = 1;
    _canLoadMore = true;
    _getData(event, emit);
  }

  void _loadMore(event, emit) async {
    if(_canLoadMore){
      _currentPage ++;
      _getData(event, emit);
    }else{
      Fluttertoast.showToast(msg: "暂无更多数据");
    }
  }


  void _getData(event, emit) async {
    String url =
        "https://api.bilibili.com/x/web-interface/popular?ps=$_pageSize&pn=$_currentPage";
    NetClient().get<VideoEntity>(url, onSuccess: (entity) {
      List<VideoList>? list = entity.list;
      if (list != null && list.isNotEmpty) {
        if (list.length < _pageSize) {
          _canLoadMore = false;
        }
        if (_currentPage == 1) {
          _dataList.clear();
        }
        _dataList.addAll(list);
      }
      add(GetDataSuccessEvent());
    });
  }
}
