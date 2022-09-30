import 'package:flutter/services.dart';

class FetchVideoByAndroid {
  static const MethodChannel _channel =
      MethodChannel('com.zoomself.bilibili_flutter');

  ///通过一个aid 或者 bid ，android端 通过解析官网网页方式拿到相应的视频和音频流，然后通过ffmpeg合并，最后保存到本地
  static Future<String?> downloadVideo({
    required String videoId,
  }) async {
    final Map<String, dynamic> params = <String, dynamic>{'videoId': videoId};
    String? res = await _channel.invokeMethod('downloadVideo', params);
    return res;
  }


  ///通过一个 视频短链接 ，android端直接下载视频
  static Future<String?> downloadVideoDirect({
    required String mp4Url,
    required String videoId,
    required String videoName,
  }) async {

    final Map<String, dynamic> params = <String, dynamic>{'videoId': videoId,'videoName': videoName,'mp4Url': mp4Url,};
    String? res = await _channel.invokeMethod('downloadVideoDirect', params);
    return res;
  }

}
