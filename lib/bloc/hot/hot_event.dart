
import 'package:bilibili_flutter/bloc/hot/hot_state.dart';

abstract class HotEvent {}

/*class RefreshEvent extends HotEvent{}
class RefreshSuccessEvent extends HotEvent{}
class RefreshErrorEvent extends HotEvent{}
class RefreshNoDataEvent extends HotEvent{}

class LoadMoreEvent extends HotEvent{}
class LoadMoreSuccessEvent extends HotEvent{}
class LoadMoreErrorEvent extends HotEvent{}
class LoadMoreNoDataEvent extends HotEvent{}*/

class InitEvent extends HotEvent {}

class RefreshEvent extends HotEvent{}
class LoadMoreEvent extends HotEvent{}
class GetDataSuccessEvent extends HotEvent{}
class GetDataErrorEvent extends HotEvent{}



