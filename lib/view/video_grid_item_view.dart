import 'dart:math';

import 'package:bilibili_flutter/base/utils/string_utils.dart';
import 'package:bilibili_flutter/generated/assets.dart';
import 'package:flutter/material.dart';
import '../model/video_entity.dart';

class VideoGridItemView extends StatefulWidget {
  final VideoList videoList;

  final double itemHeight;

  const VideoGridItemView({
    Key? key,
    required this.videoList,
    required this.itemHeight,
  }) : super(key: key);

  @override
  State<VideoGridItemView> createState() => _VideoGridItemViewState();
}

class _VideoGridItemViewState extends State<VideoGridItemView> {
  double radius = 4;

  ///友好数字显示
  String getFriendNum(int? num) {
    if (num == null) {
      return "0";
    }
    if (num < 10000) {
      return "$num";
    }
    //保留1位小数
    return "${(num / 10000).toStringAsFixed(1)}w";
  }

  ///播放量，评论量，时长 文字样式
  TextStyle getStatTextStyle() {
    return const TextStyle(
        color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold);
  }

  ///标题，点赞
  Widget getTitleView() {
    double height=min(widget.itemHeight * 0.5, 80);
    return Container(
      height: height,
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(widget.videoList.title!,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2),
          ),
          Container(
              margin: const EdgeInsets.only(top: 8),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.pink[100]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 4, right: 4, top: 2, bottom: 2),
                  child: Text(
                    "${getFriendNum(widget.videoList.stat?.like)}点赞",
                    style: const TextStyle(fontSize: 10, color: Colors.pink),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  ///播放量，评论量，时长
  Widget getStatView() {
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8, bottom: 6),
      child: Row(
        children: [
          Expanded(
              child: Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.imagesIcPlayCount,
                    width: 14,
                    height: 14,
                    color: Colors.white,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        getFriendNum(widget.videoList.stat?.view),
                        style: getStatTextStyle(),
                      ))
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesIcCommentCount,
                      width: 14,
                      height: 14,
                      color: Colors.white,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(getFriendNum(widget.videoList.stat?.reply),
                            style: getStatTextStyle()))
                  ],
                ),
              ),
            ],
          )),
          Text(
            StringUtils.getFriendDuration(widget.videoList.duration),
            style: getStatTextStyle(),
          )
        ],
      ),
    );
  }

  ///封面图片 播放量..
  Widget getImageView() {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radius),
              topRight: Radius.circular(radius)),
          child: Image.network(
            widget.videoList.pic!,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        getStatView()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Expanded(child: getImageView()), getTitleView()],
      ),
    );
  }
}
