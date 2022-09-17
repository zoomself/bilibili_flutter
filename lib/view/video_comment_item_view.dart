import 'package:bilibili_flutter/base/utils/image_utils.dart';
import 'package:bilibili_flutter/base/utils/string_utils.dart';
import 'package:flutter/material.dart';

import '../model/member_entity.dart';
import '../model/video_comment_entity.dart';
import '../model/video_detail_entity.dart';

class VideoCommentItemView extends StatefulWidget {
  final VideoCommentEntity videoCommentEntity;

  const VideoCommentItemView({Key? key, required this.videoCommentEntity})
      : super(key: key);

  @override
  State<VideoCommentItemView> createState() => _VideoCommentItemViewState();
}

class _VideoCommentItemViewState extends State<VideoCommentItemView> {
  Widget getContentView(VideoCommentEntity entity){
    List<MemberEntity>? members = entity.content?.members;
    if(members==null||members.isEmpty){
      return Text(
        "${entity.member?.uname}:${entity.content?.message}",
        style: const TextStyle(color: Colors.black, fontSize: 12),
      );
    }
    return  Text(
      "${entity.member?.uname} ${entity.content?.message}",
      style: const TextStyle(color: Colors.black, fontSize: 12),
    );
  }

  Widget getSubCommentList() {
    List<VideoCommentEntity>? replies = widget.videoCommentEntity.replies;
    if (replies == null || replies.isEmpty) {
      return Container();
    }
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: ListView.builder(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          itemCount: replies.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: getContentView(replies[index]),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
              child: ImageUtils.load(
                  "${widget.videoCommentEntity.member?.avatar}",
                  width: 30,
                  height: 30)),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //名字
                Text(
                  "${widget.videoCommentEntity.member?.uname}",
                  style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),

                //发表时间
                Container(
                    margin: const EdgeInsets.only(top: 4),
                    child: Text(
                      "${widget.videoCommentEntity.replyControl?.timeDesc}",
                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                    )),

                //内容
                Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      "${widget.videoCommentEntity.content?.message}",
                      softWrap: true,
                      style: const TextStyle(color: Colors.black, fontSize: 13),
                    )),

                getSubCommentList(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
