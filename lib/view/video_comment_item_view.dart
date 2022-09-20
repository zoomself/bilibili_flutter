import 'package:bilibili_flutter/base/utils/image_utils.dart';
import 'package:bilibili_flutter/base/utils/string_utils.dart';
import 'package:bilibili_flutter/generated/assets.dart';
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


  Widget getContentView(VideoCommentEntity entity) {
    List<MemberEntity>? members = entity.content?.members;
    if (members == null || members.isEmpty) {
      return Text.rich(TextSpan(children: [
        TextSpan(
            text: "${entity.member?.uname}",
            style: const TextStyle(
                color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w500)),
        TextSpan(
            text: " : ${entity.content?.message}",
            style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.normal)),
      ]));
    }
    String? message = entity.content?.message;
    String to = "";
    StringBuffer contentBuffer = StringBuffer();
    if (message != null) {
      message=message.replaceFirst("回复", "");
      List<String> list = message.split(":");
      if (list.length >= 2) {
        to = list[0];
        for(int i=1;i<list.length;i++){
          contentBuffer.write(list[i]);
        }
      }
    }
    print("zoomself :${contentBuffer.toString()}");

    return Text.rich(TextSpan(children: [
      TextSpan(
          text: "${entity.member?.uname}",
          style: const TextStyle(
              color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w500)),
      const TextSpan(
          text: " 回复 ",
          style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.normal)),

      TextSpan(
          text: to,
          style: const TextStyle(
              color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w500)),
      TextSpan(
          text: contentBuffer.toString(),
          style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.normal)),
    ]));

  }

  List<Widget> getSub(List<VideoCommentEntity> replies) {
    List<Widget> list = [];
    for (VideoCommentEntity videoCommentEntity in replies) {
      list.add(Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: getContentView(videoCommentEntity),
      ));
    }
    return list;
  }

  ///子评论
  Widget getSubCommentList() {
    List<VideoCommentEntity>? replies = widget.videoCommentEntity.replies;
    if (replies == null || replies.isEmpty) {
      return Container();
    }
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 16, bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: getSub(replies),
      ),
    );
  }

  ///点赞，评论，转发
  Widget getSocialView() {
    bool isUpLike = false;
    bool? like = widget.videoCommentEntity.upAction?.like;
    if (like != null) {
      isUpLike = like;
    }
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                Assets.imagesIcLike1,
                width: 12,
                height: 12,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Text(
                  StringUtils.getFriendNum(widget.videoCommentEntity.like),
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Image.asset(
                  Assets.imagesIcDisLike1,
                  width: 12,
                  height: 12,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Image.asset(
                  Assets.imagesIcShare1,
                  width: 12,
                  height: 12,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Image.asset(
                  Assets.imagesIcComment1,
                  width: 12,
                  height: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Visibility(
              visible: isUpLike,
              child: Container(
                margin: const EdgeInsets.only(top: 8),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey[100]),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, left: 4, right: 4),
                    child: Text(
                      "UP主觉得很赞",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ),
                ),
              ))
        ],
      ),
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
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          height: 1.8,
                          color: Colors.black,
                          fontSize: 13),
                    )),

                getSocialView(),
                getSubCommentList(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
