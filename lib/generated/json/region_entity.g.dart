import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/region_entity.dart';

RegionEntity $RegionEntityFromJson(Map<String, dynamic> json) {
	final RegionEntity regionEntity = RegionEntity();
	final RegionRegionCount? regionCount = jsonConvert.convert<RegionRegionCount>(json['region_count']);
	if (regionCount != null) {
		regionEntity.regionCount = regionCount;
	}
	return regionEntity;
}

Map<String, dynamic> $RegionEntityToJson(RegionEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['region_count'] = entity.regionCount?.toJson();
	return data;
}

RegionRegionCount $RegionRegionCountFromJson(Map<String, dynamic> json) {
	final RegionRegionCount regionRegionCount = RegionRegionCount();
	final int? x1 = jsonConvert.convert<int>(json['1']);
	if (x1 != null) {
		regionRegionCount.x1 = x1;
	}
	final int? x11 = jsonConvert.convert<int>(json['11']);
	if (x11 != null) {
		regionRegionCount.x11 = x11;
	}
	final int? x119 = jsonConvert.convert<int>(json['119']);
	if (x119 != null) {
		regionRegionCount.x119 = x119;
	}
	final int? x129 = jsonConvert.convert<int>(json['129']);
	if (x129 != null) {
		regionRegionCount.x129 = x129;
	}
	final int? x13 = jsonConvert.convert<int>(json['13']);
	if (x13 != null) {
		regionRegionCount.x13 = x13;
	}
	final int? x138 = jsonConvert.convert<int>(json['138']);
	if (x138 != null) {
		regionRegionCount.x138 = x138;
	}
	final int? x155 = jsonConvert.convert<int>(json['155']);
	if (x155 != null) {
		regionRegionCount.x155 = x155;
	}
	final int? x160 = jsonConvert.convert<int>(json['160']);
	if (x160 != null) {
		regionRegionCount.x160 = x160;
	}
	final int? x165 = jsonConvert.convert<int>(json['165']);
	if (x165 != null) {
		regionRegionCount.x165 = x165;
	}
	final int? x167 = jsonConvert.convert<int>(json['167']);
	if (x167 != null) {
		regionRegionCount.x167 = x167;
	}
	final int? x17 = jsonConvert.convert<int>(json['17']);
	if (x17 != null) {
		regionRegionCount.x17 = x17;
	}
	final int? x177 = jsonConvert.convert<int>(json['177']);
	if (x177 != null) {
		regionRegionCount.x177 = x177;
	}
	final int? x181 = jsonConvert.convert<int>(json['181']);
	if (x181 != null) {
		regionRegionCount.x181 = x181;
	}
	final int? x188 = jsonConvert.convert<int>(json['188']);
	if (x188 != null) {
		regionRegionCount.x188 = x188;
	}
	final int? x202 = jsonConvert.convert<int>(json['202']);
	if (x202 != null) {
		regionRegionCount.x202 = x202;
	}
	final int? x211 = jsonConvert.convert<int>(json['211']);
	if (x211 != null) {
		regionRegionCount.x211 = x211;
	}
	final int? x217 = jsonConvert.convert<int>(json['217']);
	if (x217 != null) {
		regionRegionCount.x217 = x217;
	}
	final int? x223 = jsonConvert.convert<int>(json['223']);
	if (x223 != null) {
		regionRegionCount.x223 = x223;
	}
	final int? x23 = jsonConvert.convert<int>(json['23']);
	if (x23 != null) {
		regionRegionCount.x23 = x23;
	}
	final int? x234 = jsonConvert.convert<int>(json['234']);
	if (x234 != null) {
		regionRegionCount.x234 = x234;
	}
	final int? x3 = jsonConvert.convert<int>(json['3']);
	if (x3 != null) {
		regionRegionCount.x3 = x3;
	}
	final int? x36 = jsonConvert.convert<int>(json['36']);
	if (x36 != null) {
		regionRegionCount.x36 = x36;
	}
	final int? x4 = jsonConvert.convert<int>(json['4']);
	if (x4 != null) {
		regionRegionCount.x4 = x4;
	}
	final int? x5 = jsonConvert.convert<int>(json['5']);
	if (x5 != null) {
		regionRegionCount.x5 = x5;
	}
	final int? x75 = jsonConvert.convert<int>(json['75']);
	if (x75 != null) {
		regionRegionCount.x75 = x75;
	}
	final int? x76 = jsonConvert.convert<int>(json['76']);
	if (x76 != null) {
		regionRegionCount.x76 = x76;
	}
	return regionRegionCount;
}

Map<String, dynamic> $RegionRegionCountToJson(RegionRegionCount entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['1'] = entity.x1;
	data['11'] = entity.x11;
	data['119'] = entity.x119;
	data['129'] = entity.x129;
	data['13'] = entity.x13;
	data['138'] = entity.x138;
	data['155'] = entity.x155;
	data['160'] = entity.x160;
	data['165'] = entity.x165;
	data['167'] = entity.x167;
	data['17'] = entity.x17;
	data['177'] = entity.x177;
	data['181'] = entity.x181;
	data['188'] = entity.x188;
	data['202'] = entity.x202;
	data['211'] = entity.x211;
	data['217'] = entity.x217;
	data['223'] = entity.x223;
	data['23'] = entity.x23;
	data['234'] = entity.x234;
	data['3'] = entity.x3;
	data['36'] = entity.x36;
	data['4'] = entity.x4;
	data['5'] = entity.x5;
	data['75'] = entity.x75;
	data['76'] = entity.x76;
	return data;
}