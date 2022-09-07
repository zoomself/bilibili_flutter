import 'package:flutter/material.dart';

class VideoDetailSimpleIntroPage extends StatefulWidget {
  const VideoDetailSimpleIntroPage({Key? key}) : super(key: key);

  @override
  State<VideoDetailSimpleIntroPage> createState() => _VideoDetailSimpleIntroPageState();
}

class _VideoDetailSimpleIntroPageState extends State<VideoDetailSimpleIntroPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:10,itemBuilder: (a,b){
      return Container(child: Text("text:$b"),height: 100,);
    });
    return SliverFixedExtentList(delegate: SliverChildBuilderDelegate(
        (a,b){
          return Text("data:$b");
        }
    ), itemExtent: 100);
  }
}
