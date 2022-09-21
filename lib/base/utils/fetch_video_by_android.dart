import 'package:flutter/services.dart';

class FetchVideoByAndroid {
  static const MethodChannel _channel =
      MethodChannel('com.zoomself.bilibili_flutter');

  static Future<String?> getVideoInfo({
    required String videoId,
  }) async {
    final Map<String, dynamic> params = <String, dynamic>{'videoId': videoId};
    String? res = await _channel.invokeMethod('getVideoInfo', params);
    return res;
  }
}
