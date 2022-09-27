class VideoPlayerParamBean {
  late String url; //视频URL
   String? imageUrl; //封面图
  Map<String, String> httpHeaders = <String, String>{};
  bool looping = true; //是否循环播放
  bool playAfterInit = false; //是否初始化后里面播放
  bool isFullScreenPlaying = false; //是否处于全屏播放

}
