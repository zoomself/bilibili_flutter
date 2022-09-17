import 'package:bilibili_flutter/model/video_detail_entity.dart';
import 'package:bilibili_flutter/view/video_comment_item_view.dart';
import 'package:flutter/material.dart';

class VideoDetailCommentPage extends StatefulWidget {
  final VideoDetailEntity detailEntity;

  const VideoDetailCommentPage({Key? key, required this.detailEntity})
      : super(key: key);

  @override
  State<VideoDetailCommentPage> createState() => _VideoDetailCommentPageState();
}

class _VideoDetailCommentPageState extends State<VideoDetailCommentPage> {
  Widget getEmptyView() {
    return const Center(
      child: Text("暂无评论"),
    );
  }

  Widget getListView() {
    VideoDetailReply? reply = widget.detailEntity.reply;
    if (reply == null) {
      return getEmptyView();
    }
    List<VideoDetailReplyReplies>? replies = reply.replies;
    if (replies == null || replies.isEmpty) {
      return getEmptyView();
    }
    String avatar = widget.detailEntity.view?.owner?.face ?? "";
    String name = widget.detailEntity.view?.owner?.name ?? "";
    return ListView.separated(
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return VideoCommentItemView(
            name: name,
            avatar: avatar,
            videoDetailReplyReplies: replies[index],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 0.2,
            height: 0.2,
          );
        },
        itemCount: replies.length);
  }

  @override
  Widget build(BuildContext context) {
    return getListView();
  }
}
