import 'package:bilibili_flutter/generated/json/base/json_field.dart';
import 'package:bilibili_flutter/generated/json/region_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class RegionEntity {

	@JSONField(name: "region_count")
	RegionRegionCount? regionCount;
  
  RegionEntity();

  factory RegionEntity.fromJson(Map<String, dynamic> json) => $RegionEntityFromJson(json);

  Map<String, dynamic> toJson() => $RegionEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RegionRegionCount {

	@JSONField(name: "1")
	int? x1;
	@JSONField(name: "11")
	int? x11;
	@JSONField(name: "119")
	int? x119;
	@JSONField(name: "129")
	int? x129;
	@JSONField(name: "13")
	int? x13;
	@JSONField(name: "138")
	int? x138;
	@JSONField(name: "155")
	int? x155;
	@JSONField(name: "160")
	int? x160;
	@JSONField(name: "165")
	int? x165;
	@JSONField(name: "167")
	int? x167;
	@JSONField(name: "17")
	int? x17;
	@JSONField(name: "177")
	int? x177;
	@JSONField(name: "181")
	int? x181;
	@JSONField(name: "188")
	int? x188;
	@JSONField(name: "202")
	int? x202;
	@JSONField(name: "211")
	int? x211;
	@JSONField(name: "217")
	int? x217;
	@JSONField(name: "223")
	int? x223;
	@JSONField(name: "23")
	int? x23;
	@JSONField(name: "234")
	int? x234;
	@JSONField(name: "3")
	int? x3;
	@JSONField(name: "36")
	int? x36;
	@JSONField(name: "4")
	int? x4;
	@JSONField(name: "5")
	int? x5;
	@JSONField(name: "75")
	int? x75;
	@JSONField(name: "76")
	int? x76;
  
  RegionRegionCount();

  factory RegionRegionCount.fromJson(Map<String, dynamic> json) => $RegionRegionCountFromJson(json);

  Map<String, dynamic> toJson() => $RegionRegionCountToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}