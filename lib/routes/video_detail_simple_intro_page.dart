import 'package:bilibili_flutter/base/utils/image_utils.dart';
import 'package:bilibili_flutter/base/utils/string_utils.dart';
import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/video_detail_entity.dart';
import 'package:bilibili_flutter/view/video_list_item_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../generated/assets.dart';
import '../model/video_entity.dart';

///视频详情 --->简介
class VideoDetailSimpleIntroPage extends StatefulWidget {
  final VideoDetailEntity detailEntity;

  const VideoDetailSimpleIntroPage({Key? key, required this.detailEntity})
      : super(key: key);

  @override
  State<VideoDetailSimpleIntroPage> createState() =>
      _VideoDetailSimpleIntroPageState();
}

class _VideoDetailSimpleIntroPageState extends State<VideoDetailSimpleIntroPage>
    with AutomaticKeepAliveClientMixin {
  bool showTag = false;

  ///一些统一的字体样式
  TextStyle getUserInfoStyle() {
    return const TextStyle(
        fontSize: 12, color: Colors.grey, fontWeight: FontWeight.normal);
  }

  ///发布时间
  String getPubTime() {
    int result = 0;
    int? time = widget.detailEntity.view?.pubdate;
    if (time != null) {
      result = time * 1000;
    }
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(result);
    return "${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}";
  }

  ///头像信息..
  Widget getUserInfoView() {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Row(
        children: [
          ClipOval(
            child: ImageUtils.load("${widget.detailEntity.card?.card?.face}",
                width: 30, height: 30),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 16, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.detailEntity.card?.card?.name}",
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "${StringUtils.getFriendNum(widget.detailEntity.card?.follower)}粉丝",
                      style: getUserInfoStyle(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: Text(
                        "${StringUtils.getFriendNum(widget.detailEntity.card?.archiveCount)}视频",
                        style: getUserInfoStyle(),
                      ),
                    ),
                    /* Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: Text(
                        "ip属地:湖南",
                        style: getUserInfoStyle(),
                      ),
                    )*/
                  ],
                )
              ],
            ),
          )),
          DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(4)),
            child: InkWell(
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                child: Text(
                  "+ 关注",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              onTap: () {
                Fluttertoast.showToast(msg: "请先登录");
              },
            ),
          )
        ],
      ),
    );
  }

  ///标题
  Widget getTitleView() {
    return InkWell(
        child: Row(
          children: [
            Expanded(
                child: Text(
              "${widget.detailEntity.view?.title}",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
            Container(
              margin: const EdgeInsets.only(left: 24),
              child: Image.asset(
                !showTag ? Assets.imagesIcDrawDown : Assets.imagesIcDrawUp,
                width: 16,
                height: 16,
              ),
            )
          ],
        ),
        onTap: () {
          setState(() {
            showTag = !showTag;
          });
        });
  }

  ///播放量，评论...
  Widget getStatView() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
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
                    width: 15,
                    height: 15,
                    color: Colors.grey,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        StringUtils.getFriendNum(
                            widget.detailEntity.view?.stat?.view),
                        style: getUserInfoStyle(),
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
                      width: 15,
                      height: 15,
                      color: Colors.grey,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                            StringUtils.getFriendNum(
                                widget.detailEntity.reply?.page?.count),
                            style: getUserInfoStyle()))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(getPubTime(),
                    //child: Text("${DateTime.fromMillisecondsSinceEpoch(1660953330)}",
                    style: getUserInfoStyle()),
              ),
            ],
          )),
        ],
      ),
    );
  }

  ///标签
  Widget getLabelView() {
    if (!showTag) {
      return Container();
    }
    List<VideoDetailTags>? tags = widget.detailEntity.tags;
    if (tags == null) {
      return Container();
    }
    ///视频标签
    List<Widget> getTagList() {
      List<Widget> list = [];
      for (VideoDetailTags tag in tags) {
        list.add(DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey[200]),
          child: Container(
            padding:
                const EdgeInsets.only(top: 3, bottom: 3, left: 12, right: 12),
            child: Text(
              "${tag.tagName}",
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ),
        ));
      }
      return list;
    }

    ///视频简介des
    Widget getDesView() {
      String? desc = widget.detailEntity.view?.desc;
      if(desc==null){
        return Container();
      }
      return Container(
        margin: const EdgeInsets.only(bottom: 12),
        child: Text(
          "${widget.detailEntity.view?.desc}",
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getDesView(),
          Wrap(
            spacing: 8,
            runSpacing: 12,
            children: getTagList(),
          )
        ],
      ),
    );
  }

  ///点赞，收藏...
  Widget getSocialView() {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 8),
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Image.asset(
                Assets.imagesIcLike,
                width: 20,
                height: 20,
                color: Colors.pink,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  StringUtils.getFriendNum(
                      widget.detailEntity.view?.stat?.like),
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.pink,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Image.asset(
                Assets.imagesIcDisLike,
                width: 20,
                height: 20,
                color: Colors.grey[700],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  StringUtils.getFriendNum(
                      widget.detailEntity.view?.stat?.dislike),
                  style: getUserInfoStyle(),
                ),
              )
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Image.asset(
                Assets.imagesIcB,
                width: 20,
                height: 20,
                color: Colors.grey[700],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  StringUtils.getFriendNum(
                      widget.detailEntity.view?.stat?.coin),
                  style: getUserInfoStyle(),
                ),
              )
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Image.asset(
                Assets.imagesIcCollect,
                width: 20,
                height: 20,
                color: Colors.grey[700],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  StringUtils.getFriendNum(
                      widget.detailEntity.view?.stat?.favorite),
                  style: getUserInfoStyle(),
                ),
              )
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Image.asset(
                Assets.imagesIcShare,
                width: 20,
                height: 20,
                color: Colors.grey[700],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  StringUtils.getFriendNum(
                      widget.detailEntity.view?.stat?.share),
                  style: getUserInfoStyle(),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }

  List<VideoList> getDataList() {
    List<VideoList> dataList = [];
    //插入5个占位的
    dataList.add(VideoList());
    dataList.add(VideoList());
    dataList.add(VideoList());
    dataList.add(VideoList());
    dataList.add(VideoList());
    List<VideoDetailRelated>? relatedList = widget.detailEntity.related;
    if (relatedList != null && relatedList.isNotEmpty) {
      for (VideoDetailRelated related in relatedList) {
        VideoList? videoList =
            JsonConvert.fromJsonAsT<VideoList>(related.toJson());
        if (videoList != null) {
          dataList.add(videoList);
        }
      }
    }
    return dataList;
  }


  Widget getBody() {
    var dataList = getDataList();
    if(dataList.length==5){
      return ListView.builder(
          padding: const EdgeInsets.only(top: 0),
          //这种column 嵌套listview 顶部会有空白区域
          itemCount: dataList.length+1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return getUserInfoView();
            }
            if (index == 1) {
              return getTitleView();
            }
            if (index == 2) {
              return getStatView();
            }
            if (index == 3) {
              return getLabelView();
            }
            if (index == 4) {
              return getSocialView();
            }
            return const SizedBox(height: 150,child: Center(child: Text("暂无相关推荐视频"),),);
          });
    }

    //在Flutter 的 Column/Row 内使用ListView.builder()需要对改ListView的大小进行指定
    //需要包一层 Expanded 或者 Container 指定高度
    //使用多type形式 解决该页面不能完全顶到最上面去的问题
    return ListView.builder(
        padding: const EdgeInsets.only(top: 0),
        //这种column 嵌套listview 顶部会有空白区域
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return getUserInfoView();
          }
          if (index == 1) {
            return getTitleView();
          }
          if (index == 2) {
            return getStatView();
          }
          if (index == 3) {
            return getLabelView();
          }
          if (index == 4) {
            return getSocialView();
          }
          return VideoListItemView(videoList: dataList[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: getBody(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
