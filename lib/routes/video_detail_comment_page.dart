import 'package:bilibili_flutter/model/video_detail_entity.dart';
import 'package:flutter/material.dart';

class VideoDetailCommentPage extends StatefulWidget {
  final VideoDetailEntity detailEntity;

  const VideoDetailCommentPage({Key? key, required this.detailEntity}) : super(key: key);

  @override
  State<VideoDetailCommentPage> createState() => _VideoDetailCommentPageState();
}

class _VideoDetailCommentPageState extends State<VideoDetailCommentPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("暂无评论"),
    );
  }
}
