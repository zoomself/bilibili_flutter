import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/download_video_info_entity.dart';

DownloadVideoInfoEntity $DownloadVideoInfoEntityFromJson(Map<String, dynamic> json) {
	final DownloadVideoInfoEntity downloadVideoInfoEntity = DownloadVideoInfoEntity();
	final String? cover = jsonConvert.convert<String>(json['cover']);
	if (cover != null) {
		downloadVideoInfoEntity.cover = cover;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		downloadVideoInfoEntity.desc = desc;
	}
	final List<DownloadVideoInfoList>? list = jsonConvert.convertListNotNull<DownloadVideoInfoList>(json['list']);
	if (list != null) {
		downloadVideoInfoEntity.list = list;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		downloadVideoInfoEntity.title = title;
	}
	return downloadVideoInfoEntity;
}

Map<String, dynamic> $DownloadVideoInfoEntityToJson(DownloadVideoInfoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['cover'] = entity.cover;
	data['desc'] = entity.desc;
	data['list'] =  entity.list?.map((v) => v.toJson()).toList();
	data['title'] = entity.title;
	return data;
}

DownloadVideoInfoList $DownloadVideoInfoListFromJson(Map<String, dynamic> json) {
	final DownloadVideoInfoList downloadVideoInfoList = DownloadVideoInfoList();
	final List<String>? accept = jsonConvert.convertListNotNull<String>(json['accept']);
	if (accept != null) {
		downloadVideoInfoList.accept = accept;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		downloadVideoInfoList.duration = duration;
	}
	final String? durationFormat = jsonConvert.convert<String>(json['durationFormat']);
	if (durationFormat != null) {
		downloadVideoInfoList.durationFormat = durationFormat;
	}
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		downloadVideoInfoList.height = height;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		downloadVideoInfoList.title = title;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		downloadVideoInfoList.url = url;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		downloadVideoInfoList.width = width;
	}
	return downloadVideoInfoList;
}

Map<String, dynamic> $DownloadVideoInfoListToJson(DownloadVideoInfoList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['accept'] =  entity.accept;
	data['duration'] = entity.duration;
	data['durationFormat'] = entity.durationFormat;
	data['height'] = entity.height;
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['width'] = entity.width;
	return data;
}