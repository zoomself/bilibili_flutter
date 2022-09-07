import 'package:bilibili_flutter/generated/json/base/json_field.dart';
import 'package:bilibili_flutter/generated/json/video_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class VideoEntity {

	List<VideoList>? list;
	String? note;
  
  VideoEntity();

  factory VideoEntity.fromJson(Map<String, dynamic> json) => $VideoEntityFromJson(json);

  Map<String, dynamic> toJson() => $VideoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoList {

	int? aid;
	String? bvid;
	int? cid;
	int? copyright;
	int? ctime;
	String? desc;
	VideoListDimension? dimension;
	int? duration;
	@JSONField(name: "dynamic")
	String? xDynamic;
	@JSONField(name: "first_frame")
	String? firstFrame;
	@JSONField(name: "mission_id")
	int? missionId;
	VideoListOwner? owner;
	String? pic;
	@JSONField(name: "pub_location")
	String? pubLocation;
	int? pubdate;
	VideoListRights? rights;
	int? score;
	@JSONField(name: "short_link")
	String? shortLink;
	@JSONField(name: "short_link_v2")
	String? shortLinkV2;
	VideoListStat? stat;
	int? state;
	int? tid;
	String? title;
	String? tname;
	int? videos;
  
  VideoList();

  factory VideoList.fromJson(Map<String, dynamic> json) => $VideoListFromJson(json);

  Map<String, dynamic> toJson() => $VideoListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoListDimension {

	int? height;
	int? rotate;
	int? width;
  
  VideoListDimension();

  factory VideoListDimension.fromJson(Map<String, dynamic> json) => $VideoListDimensionFromJson(json);

  Map<String, dynamic> toJson() => $VideoListDimensionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoListOwner {

	String? face;
	int? mid;
	String? name;
  
  VideoListOwner();

  factory VideoListOwner.fromJson(Map<String, dynamic> json) => $VideoListOwnerFromJson(json);

  Map<String, dynamic> toJson() => $VideoListOwnerToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoListRights {

	@JSONField(name: "arc_pay")
	int? arcPay;
	int? autoplay;
	int? bp;
	int? download;
	int? elec;
	int? hd5;
	@JSONField(name: "is_cooperation")
	int? isCooperation;
	int? movie;
	@JSONField(name: "no_background")
	int? noBackground;
	@JSONField(name: "no_reprint")
	int? noReprint;
	int? pay;
	@JSONField(name: "pay_free_watch")
	int? payFreeWatch;
	@JSONField(name: "ugc_pay")
	int? ugcPay;
	@JSONField(name: "ugc_pay_preview")
	int? ugcPayPreview;
  
  VideoListRights();

  factory VideoListRights.fromJson(Map<String, dynamic> json) => $VideoListRightsFromJson(json);

  Map<String, dynamic> toJson() => $VideoListRightsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoListStat {

	int? aid;
	int? coin;
	int? danmaku;
	int? dislike;
	int? favorite;
	@JSONField(name: "his_rank")
	int? hisRank;
	int? like;
	@JSONField(name: "now_rank")
	int? nowRank;
	int? reply;
	int? share;
	int? view;
  
  VideoListStat();

  factory VideoListStat.fromJson(Map<String, dynamic> json) => $VideoListStatFromJson(json);

  Map<String, dynamic> toJson() => $VideoListStatToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}