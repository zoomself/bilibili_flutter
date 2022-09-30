import 'package:bilibili_flutter/generated/json/base/json_field.dart';
import 'package:bilibili_flutter/generated/json/download_video_info_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class DownloadVideoInfoEntity {

	String? cover;
	String? desc;
	List<DownloadVideoInfoList>? list;
	String? title;
  
  DownloadVideoInfoEntity();

  factory DownloadVideoInfoEntity.fromJson(Map<String, dynamic> json) => $DownloadVideoInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $DownloadVideoInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DownloadVideoInfoList {

	List<String>? accept;
	int? duration;
	String? durationFormat;
	int? height;
	String? title;
	String? url;
	int? width;
  
  DownloadVideoInfoList();

  factory DownloadVideoInfoList.fromJson(Map<String, dynamic> json) => $DownloadVideoInfoListFromJson(json);

  Map<String, dynamic> toJson() => $DownloadVideoInfoListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}