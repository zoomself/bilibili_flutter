import 'package:bilibili_flutter/base/utils/screen_utils.dart';
import 'package:bilibili_flutter/base/video/video_player_param_bean.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'classic_video_player.dart';

///经典全屏播放页面
class ClassicFullScreenPlayingPage extends StatefulWidget {
  final VideoPlayerParamBean paramBean;
  final VideoPlayerController playerController;

  const ClassicFullScreenPlayingPage(
      {Key? key, required this.paramBean, required this.playerController})
      : super(key: key);

  @override
  State<ClassicFullScreenPlayingPage> createState() =>
      _ClassicFullScreenPlayingPageState();
}

class _ClassicFullScreenPlayingPageState
    extends State<ClassicFullScreenPlayingPage> {

  @override
  void dispose() {
    widget.paramBean.isFullScreenPlaying=false;
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: ScreenUtils.getScreenHeight(),
        width: double.infinity,
        child: ClassicVideoPlayer(
          paramBean: widget.paramBean,
          videoPlayerController: widget.playerController,
        ),
      ),
    );
  }


}
