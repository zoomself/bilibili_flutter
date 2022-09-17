import 'package:bilibili_flutter/base/utils/image_utils.dart';
import 'package:bilibili_flutter/base/utils/string_utils.dart';
import 'package:flutter/material.dart';

import '../model/video_detail_entity.dart';

class VideoCommentItemView extends StatefulWidget {
  final String avatar;
  final String name;
  final VideoDetailReplyReplies videoDetailReplyReplies;

  const VideoCommentItemView(
      {Key? key,
      required this.videoDetailReplyReplies,
      required this.avatar,
      required this.name})
      : super(key: key);

  @override
  State<VideoCommentItemView> createState() => _VideoCommentItemViewState();
}

class _VideoCommentItemViewState extends State<VideoCommentItemView> {
  ///发布时间
  String getPubTime() {
    int result = 0;
    int? time = widget.videoDetailReplyReplies.ctime;
    if (time != null) {
      result = time * 1000;
    }
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(result);
    return "${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}";
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
              child: ImageUtils.load(widget.avatar, width: 30, height: 30)),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //名字
                Text(
                  widget.name,
                  style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),

                //发表时间
                Container(
                    margin: const EdgeInsets.only(top: 4),
                    child: Text(
                      getPubTime(),
                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                    )),

                //内容
                Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      "${widget.videoDetailReplyReplies.content?.message}",
                      softWrap: true,
                      style: const TextStyle(color: Colors.black, fontSize: 13),
                    )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
