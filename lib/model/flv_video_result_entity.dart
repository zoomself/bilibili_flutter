import 'package:bilibili_flutter/generated/json/base/json_field.dart';
import 'package:bilibili_flutter/generated/json/flv_video_result_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class FlvVideoResultEntity {

	@JSONField(name: "accept_description")
	List<String>? acceptDescription;
	@JSONField(name: "accept_format")
	String? acceptFormat;
	@JSONField(name: "accept_quality")
	List<int>? acceptQuality;
	List<FlvVideoResultDurl>? durl;
	String? format;
	String? from;
	@JSONField(name: "last_play_cid")
	int? lastPlayCid;
	@JSONField(name: "last_play_time")
	int? lastPlayTime;
	String? message;
	int? quality;
	String? result;
	@JSONField(name: "seek_param")
	String? seekParam;
	@JSONField(name: "seek_type")
	String? seekType;
	@JSONField(name: "support_formats")
	List<FlvVideoResultSupportFormats>? supportFormats;
	int? timelength;
	@JSONField(name: "video_codecid")
	int? videoCodecid;
  
  FlvVideoResultEntity();

  factory FlvVideoResultEntity.fromJson(Map<String, dynamic> json) => $FlvVideoResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $FlvVideoResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class FlvVideoResultDurl {

	String? ahead;
	@JSONField(name: "backup_url")
	List<String>? backupUrl;
	int? length;
	int? order;
	int? size;
	String? url;
	String? vhead;
  
  FlvVideoResultDurl();

  factory FlvVideoResultDurl.fromJson(Map<String, dynamic> json) => $FlvVideoResultDurlFromJson(json);

  Map<String, dynamic> toJson() => $FlvVideoResultDurlToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class FlvVideoResultSupportFormats {

	@JSONField(name: "display_desc")
	String? displayDesc;
	String? format;
	@JSONField(name: "new_description")
	String? newDescription;
	int? quality;
	String? superscript;
  
  FlvVideoResultSupportFormats();

  factory FlvVideoResultSupportFormats.fromJson(Map<String, dynamic> json) => $FlvVideoResultSupportFormatsFromJson(json);

  Map<String, dynamic> toJson() => $FlvVideoResultSupportFormatsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}