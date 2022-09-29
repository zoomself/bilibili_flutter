import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../base/net/net_client.dart';
import '../../model/video_entity.dart';
import 'hot_page_event.dart';
import 'hot_page_state.dart';

class HotPageBloc extends Bloc<HotPageEvent, HotPageState> {
  final int _pageSize = 10;
  int _currentPage = 1;
  bool _canLoadMore = true;
  final List<VideoList> _dataList = [];

  HotPageBloc() : super(HotPageState()) {
    on<RefreshDataEvent>(_refreshData);
    on<LoadMoreDataEvent>(_loadMoreData);
    on<RefreshSuccessEvent>((event,emit){
      emit(state.refreshSuccess(_dataList));
    });
    on<LoadMoreSuccessEvent>((event,emit){
      emit(state.loadMoreSuccess(_dataList));
    });
    add(RefreshDataEvent());
  }

  void _refreshData( event,  emit) async {
    _currentPage = 1;
    _canLoadMore = true;
    _getData(event, emit);
  }

  void _loadMoreData(event, emit) async {
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
      if(_currentPage==1){
        add(RefreshSuccessEvent());
      }else{
        add(LoadMoreSuccessEvent());
      }
    });
  }
}
