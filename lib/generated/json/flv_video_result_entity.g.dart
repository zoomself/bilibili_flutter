import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/flv_video_result_entity.dart';

FlvVideoResultEntity $FlvVideoResultEntityFromJson(Map<String, dynamic> json) {
	final FlvVideoResultEntity flvVideoResultEntity = FlvVideoResultEntity();
	final List<String>? acceptDescription = jsonConvert.convertListNotNull<String>(json['accept_description']);
	if (acceptDescription != null) {
		flvVideoResultEntity.acceptDescription = acceptDescription;
	}
	final String? acceptFormat = jsonConvert.convert<String>(json['accept_format']);
	if (acceptFormat != null) {
		flvVideoResultEntity.acceptFormat = acceptFormat;
	}
	final List<int>? acceptQuality = jsonConvert.convertListNotNull<int>(json['accept_quality']);
	if (acceptQuality != null) {
		flvVideoResultEntity.acceptQuality = acceptQuality;
	}
	final List<FlvVideoResultDurl>? durl = jsonConvert.convertListNotNull<FlvVideoResultDurl>(json['durl']);
	if (durl != null) {
		flvVideoResultEntity.durl = durl;
	}
	final String? format = jsonConvert.convert<String>(json['format']);
	if (format != null) {
		flvVideoResultEntity.format = format;
	}
	final String? from = jsonConvert.convert<String>(json['from']);
	if (from != null) {
		flvVideoResultEntity.from = from;
	}
	final int? lastPlayCid = jsonConvert.convert<int>(json['last_play_cid']);
	if (lastPlayCid != null) {
		flvVideoResultEntity.lastPlayCid = lastPlayCid;
	}
	final int? lastPlayTime = jsonConvert.convert<int>(json['last_play_time']);
	if (lastPlayTime != null) {
		flvVideoResultEntity.lastPlayTime = lastPlayTime;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		flvVideoResultEntity.message = message;
	}
	final int? quality = jsonConvert.convert<int>(json['quality']);
	if (quality != null) {
		flvVideoResultEntity.quality = quality;
	}
	final String? result = jsonConvert.convert<String>(json['result']);
	if (result != null) {
		flvVideoResultEntity.result = result;
	}
	final String? seekParam = jsonConvert.convert<String>(json['seek_param']);
	if (seekParam != null) {
		flvVideoResultEntity.seekParam = seekParam;
	}
	final String? seekType = jsonConvert.convert<String>(json['seek_type']);
	if (seekType != null) {
		flvVideoResultEntity.seekType = seekType;
	}
	final List<FlvVideoResultSupportFormats>? supportFormats = jsonConvert.convertListNotNull<FlvVideoResultSupportFormats>(json['support_formats']);
	if (supportFormats != null) {
		flvVideoResultEntity.supportFormats = supportFormats;
	}
	final int? timelength = jsonConvert.convert<int>(json['timelength']);
	if (timelength != null) {
		flvVideoResultEntity.timelength = timelength;
	}
	final int? videoCodecid = jsonConvert.convert<int>(json['video_codecid']);
	if (videoCodecid != null) {
		flvVideoResultEntity.videoCodecid = videoCodecid;
	}
	return flvVideoResultEntity;
}

Map<String, dynamic> $FlvVideoResultEntityToJson(FlvVideoResultEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['accept_description'] =  entity.acceptDescription;
	data['accept_format'] = entity.acceptFormat;
	data['accept_quality'] =  entity.acceptQuality;
	data['durl'] =  entity.durl?.map((v) => v.toJson()).toList();
	data['format'] = entity.format;
	data['from'] = entity.from;
	data['last_play_cid'] = entity.lastPlayCid;
	data['last_play_time'] = entity.lastPlayTime;
	data['message'] = entity.message;
	data['quality'] = entity.quality;
	data['result'] = entity.result;
	data['seek_param'] = entity.seekParam;
	data['seek_type'] = entity.seekType;
	data['support_formats'] =  entity.supportFormats?.map((v) => v.toJson()).toList();
	data['timelength'] = entity.timelength;
	data['video_codecid'] = entity.videoCodecid;
	return data;
}

FlvVideoResultDurl $FlvVideoResultDurlFromJson(Map<String, dynamic> json) {
	final FlvVideoResultDurl flvVideoResultDurl = FlvVideoResultDurl();
	final String? ahead = jsonConvert.convert<String>(json['ahead']);
	if (ahead != null) {
		flvVideoResultDurl.ahead = ahead;
	}
	final List<String>? backupUrl = jsonConvert.convertListNotNull<String>(json['backup_url']);
	if (backupUrl != null) {
		flvVideoResultDurl.backupUrl = backupUrl;
	}
	final int? length = jsonConvert.convert<int>(json['length']);
	if (length != null) {
		flvVideoResultDurl.length = length;
	}
	final int? order = jsonConvert.convert<int>(json['order']);
	if (order != null) {
		flvVideoResultDurl.order = order;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		flvVideoResultDurl.size = size;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		flvVideoResultDurl.url = url;
	}
	final String? vhead = jsonConvert.convert<String>(json['vhead']);
	if (vhead != null) {
		flvVideoResultDurl.vhead = vhead;
	}
	return flvVideoResultDurl;
}

Map<String, dynamic> $FlvVideoResultDurlToJson(FlvVideoResultDurl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ahead'] = entity.ahead;
	data['backup_url'] =  entity.backupUrl;
	data['length'] = entity.length;
	data['order'] = entity.order;
	data['size'] = entity.size;
	data['url'] = entity.url;
	data['vhead'] = entity.vhead;
	return data;
}

FlvVideoResultSupportFormats $FlvVideoResultSupportFormatsFromJson(Map<String, dynamic> json) {
	final FlvVideoResultSupportFormats flvVideoResultSupportFormats = FlvVideoResultSupportFormats();
	final String? displayDesc = jsonConvert.convert<String>(json['display_desc']);
	if (displayDesc != null) {
		flvVideoResultSupportFormats.displayDesc = displayDesc;
	}
	final String? format = jsonConvert.convert<String>(json['format']);
	if (format != null) {
		flvVideoResultSupportFormats.format = format;
	}
	final String? newDescription = jsonConvert.convert<String>(json['new_description']);
	if (newDescription != null) {
		flvVideoResultSupportFormats.newDescription = newDescription;
	}
	final int? quality = jsonConvert.convert<int>(json['quality']);
	if (quality != null) {
		flvVideoResultSupportFormats.quality = quality;
	}
	final String? superscript = jsonConvert.convert<String>(json['superscript']);
	if (superscript != null) {
		flvVideoResultSupportFormats.superscript = superscript;
	}
	return flvVideoResultSupportFormats;
}

Map<String, dynamic> $FlvVideoResultSupportFormatsToJson(FlvVideoResultSupportFormats entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['display_desc'] = entity.displayDesc;
	data['format'] = entity.format;
	data['new_description'] = entity.newDescription;
	data['quality'] = entity.quality;
	data['superscript'] = entity.superscript;
	return data;
}