import 'package:flutter/material.dart';

///视频详情 --->简介
class VideoDetailSimpleIntroPage extends StatefulWidget {
  const VideoDetailSimpleIntroPage({Key? key}) : super(key: key);

  @override
  State<VideoDetailSimpleIntroPage> createState() =>
      _VideoDetailSimpleIntroPageState();
}

class _VideoDetailSimpleIntroPageState
    extends State<VideoDetailSimpleIntroPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Container(
        child: Text("text:$index"),
        height: 100,
      );
    });

  }

  @override
  bool get wantKeepAlive => true;
}
