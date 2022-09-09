import 'package:bilibili_flutter/base/utils/image_utils.dart';
import 'package:bilibili_flutter/base/utils/log_utils.dart';
import 'package:bilibili_flutter/base/utils/string_utils.dart';
import 'package:flutter/material.dart';

import '../base/utils/screen_utils.dart';
import '../generated/assets.dart';
import '../model/video_entity.dart';

///list列表形式
class VideoListItemView extends StatefulWidget {
  final VideoList videoList;

  const VideoListItemView(
      {Key? key, required this.videoList})
      : super(key: key);

  @override
  State<VideoListItemView> createState() => _VideoListItemViewState();
}

class _VideoListItemViewState extends State<VideoListItemView> {
  final double _imageAspect=1.55; //列表形式图片宽高比


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

  ///list 模式下图片宽度
  double getImageWidth(){
    double width=ScreenUtils.getScreenWidth()*0.45;
    LogUtils.log("width:$width");
    return width;
  }
  ///list 模式下图片高度
  double getImageHeight(){
    double height=getImageWidth()/_imageAspect;
    LogUtils.log("height:$height");
    return height;
  }

  ///图片，时长
  Widget getImageView() {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: ImageUtils.load(widget.videoList.pic!,
              width: getImageWidth(),
              fit: BoxFit.cover,
              height: getImageHeight()),
        ),
        Container(
          margin: const EdgeInsets.only(right: 4, bottom: 4),
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(2)),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 2, right: 2, top: 1, bottom: 1),
              child: Text(
                StringUtils.getFriendDuration(widget.videoList.duration),
                style: const TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  ///标题...
  Widget getTitleView() {
    return Expanded(
      child: Container(
        height: getImageHeight(),
        margin: const EdgeInsets.only(left: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(widget.videoList.title!,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 6),
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
                      style: const TextStyle(fontSize: 9, color: Colors.pink),
                    ),
                  ),
                )),
            Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(2)),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(top: 1, bottom: 1, left: 2, right: 2),
                    child: Text(
                      "UP",
                      style: TextStyle(
                          fontSize: 8,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text("${widget.videoList.owner?.name}",
                      maxLines: 1,overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal)),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              child: Row(
                children: [
                  Image.asset(
                    Assets.imagesIcPlayCount,
                    width: 15,
                    height: 15,
                    color: Colors.grey,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        "${getFriendNum(widget.videoList.stat?.view)}观看",
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                      )),
                  /*const Expanded(
                      child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "一周前",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                    ),
                  )),*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
      // child: Text("${widget.videoList.title}"),
      child: Row(
        // children: [getImageView(), getTitleView()],
        children: [getImageView(), getTitleView()],
      ),
    );
  }
}
