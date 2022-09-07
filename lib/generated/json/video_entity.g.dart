import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/video_entity.dart';

VideoEntity $VideoEntityFromJson(Map<String, dynamic> json) {
	final VideoEntity videoEntity = VideoEntity();
	final List<VideoList>? list = jsonConvert.convertListNotNull<VideoList>(json['list']);
	if (list != null) {
		videoEntity.list = list;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		videoEntity.note = note;
	}
	return videoEntity;
}

Map<String, dynamic> $VideoEntityToJson(VideoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['list'] =  entity.list?.map((v) => v.toJson()).toList();
	data['note'] = entity.note;
	return data;
}

VideoList $VideoListFromJson(Map<String, dynamic> json) {
	final VideoList videoList = VideoList();
	final int? aid = jsonConvert.convert<int>(json['aid']);
	if (aid != null) {
		videoList.aid = aid;
	}
	final String? bvid = jsonConvert.convert<String>(json['bvid']);
	if (bvid != null) {
		videoList.bvid = bvid;
	}
	final int? cid = jsonConvert.convert<int>(json['cid']);
	if (cid != null) {
		videoList.cid = cid;
	}
	final int? copyright = jsonConvert.convert<int>(json['copyright']);
	if (copyright != null) {
		videoList.copyright = copyright;
	}
	final int? ctime = jsonConvert.convert<int>(json['ctime']);
	if (ctime != null) {
		videoList.ctime = ctime;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		videoList.desc = desc;
	}
	final VideoListDimension? dimension = jsonConvert.convert<VideoListDimension>(json['dimension']);
	if (dimension != null) {
		videoList.dimension = dimension;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		videoList.duration = duration;
	}
	final String? xDynamic = jsonConvert.convert<String>(json['dynamic']);
	if (xDynamic != null) {
		videoList.xDynamic = xDynamic;
	}
	final String? firstFrame = jsonConvert.convert<String>(json['first_frame']);
	if (firstFrame != null) {
		videoList.firstFrame = firstFrame;
	}
	final int? missionId = jsonConvert.convert<int>(json['mission_id']);
	if (missionId != null) {
		videoList.missionId = missionId;
	}
	final VideoListOwner? owner = jsonConvert.convert<VideoListOwner>(json['owner']);
	if (owner != null) {
		videoList.owner = owner;
	}
	final String? pic = jsonConvert.convert<String>(json['pic']);
	if (pic != null) {
		videoList.pic = pic;
	}
	final String? pubLocation = jsonConvert.convert<String>(json['pub_location']);
	if (pubLocation != null) {
		videoList.pubLocation = pubLocation;
	}
	final int? pubdate = jsonConvert.convert<int>(json['pubdate']);
	if (pubdate != null) {
		videoList.pubdate = pubdate;
	}
	final VideoListRights? rights = jsonConvert.convert<VideoListRights>(json['rights']);
	if (rights != null) {
		videoList.rights = rights;
	}
	final int? score = jsonConvert.convert<int>(json['score']);
	if (score != null) {
		videoList.score = score;
	}
	final String? shortLink = jsonConvert.convert<String>(json['short_link']);
	if (shortLink != null) {
		videoList.shortLink = shortLink;
	}
	final String? shortLinkV2 = jsonConvert.convert<String>(json['short_link_v2']);
	if (shortLinkV2 != null) {
		videoList.shortLinkV2 = shortLinkV2;
	}
	final VideoListStat? stat = jsonConvert.convert<VideoListStat>(json['stat']);
	if (stat != null) {
		videoList.stat = stat;
	}
	final int? state = jsonConvert.convert<int>(json['state']);
	if (state != null) {
		videoList.state = state;
	}
	final int? tid = jsonConvert.convert<int>(json['tid']);
	if (tid != null) {
		videoList.tid = tid;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		videoList.title = title;
	}
	final String? tname = jsonConvert.convert<String>(json['tname']);
	if (tname != null) {
		videoList.tname = tname;
	}
	final int? videos = jsonConvert.convert<int>(json['videos']);
	if (videos != null) {
		videoList.videos = videos;
	}
	return videoList;
}

Map<String, dynamic> $VideoListToJson(VideoList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['aid'] = entity.aid;
	data['bvid'] = entity.bvid;
	data['cid'] = entity.cid;
	data['copyright'] = entity.copyright;
	data['ctime'] = entity.ctime;
	data['desc'] = entity.desc;
	data['dimension'] = entity.dimension?.toJson();
	data['duration'] = entity.duration;
	data['dynamic'] = entity.xDynamic;
	data['first_frame'] = entity.firstFrame;
	data['mission_id'] = entity.missionId;
	data['owner'] = entity.owner?.toJson();
	data['pic'] = entity.pic;
	data['pub_location'] = entity.pubLocation;
	data['pubdate'] = entity.pubdate;
	data['rights'] = entity.rights?.toJson();
	data['score'] = entity.score;
	data['short_link'] = entity.shortLink;
	data['short_link_v2'] = entity.shortLinkV2;
	data['stat'] = entity.stat?.toJson();
	data['state'] = entity.state;
	data['tid'] = entity.tid;
	data['title'] = entity.title;
	data['tname'] = entity.tname;
	data['videos'] = entity.videos;
	return data;
}

VideoListDimension $VideoListDimensionFromJson(Map<String, dynamic> json) {
	final VideoListDimension videoListDimension = VideoListDimension();
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		videoListDimension.height = height;
	}
	final int? rotate = jsonConvert.convert<int>(json['rotate']);
	if (rotate != null) {
		videoListDimension.rotate = rotate;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		videoListDimension.width = width;
	}
	return videoListDimension;
}

Map<String, dynamic> $VideoListDimensionToJson(VideoListDimension entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['height'] = entity.height;
	data['rotate'] = entity.rotate;
	data['width'] = entity.width;
	return data;
}

VideoListOwner $VideoListOwnerFromJson(Map<String, dynamic> json) {
	final VideoListOwner videoListOwner = VideoListOwner();
	final String? face = jsonConvert.convert<String>(json['face']);
	if (face != null) {
		videoListOwner.face = face;
	}
	final int? mid = jsonConvert.convert<int>(json['mid']);
	if (mid != null) {
		videoListOwner.mid = mid;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoListOwner.name = name;
	}
	return videoListOwner;
}

Map<String, dynamic> $VideoListOwnerToJson(VideoListOwner entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['face'] = entity.face;
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	return data;
}

VideoListRights $VideoListRightsFromJson(Map<String, dynamic> json) {
	final VideoListRights videoListRights = VideoListRights();
	final int? arcPay = jsonConvert.convert<int>(json['arc_pay']);
	if (arcPay != null) {
		videoListRights.arcPay = arcPay;
	}
	final int? autoplay = jsonConvert.convert<int>(json['autoplay']);
	if (autoplay != null) {
		videoListRights.autoplay = autoplay;
	}
	final int? bp = jsonConvert.convert<int>(json['bp']);
	if (bp != null) {
		videoListRights.bp = bp;
	}
	final int? download = jsonConvert.convert<int>(json['download']);
	if (download != null) {
		videoListRights.download = download;
	}
	final int? elec = jsonConvert.convert<int>(json['elec']);
	if (elec != null) {
		videoListRights.elec = elec;
	}
	final int? hd5 = jsonConvert.convert<int>(json['hd5']);
	if (hd5 != null) {
		videoListRights.hd5 = hd5;
	}
	final int? isCooperation = jsonConvert.convert<int>(json['is_cooperation']);
	if (isCooperation != null) {
		videoListRights.isCooperation = isCooperation;
	}
	final int? movie = jsonConvert.convert<int>(json['movie']);
	if (movie != null) {
		videoListRights.movie = movie;
	}
	final int? noBackground = jsonConvert.convert<int>(json['no_background']);
	if (noBackground != null) {
		videoListRights.noBackground = noBackground;
	}
	final int? noReprint = jsonConvert.convert<int>(json['no_reprint']);
	if (noReprint != null) {
		videoListRights.noReprint = noReprint;
	}
	final int? pay = jsonConvert.convert<int>(json['pay']);
	if (pay != null) {
		videoListRights.pay = pay;
	}
	final int? payFreeWatch = jsonConvert.convert<int>(json['pay_free_watch']);
	if (payFreeWatch != null) {
		videoListRights.payFreeWatch = payFreeWatch;
	}
	final int? ugcPay = jsonConvert.convert<int>(json['ugc_pay']);
	if (ugcPay != null) {
		videoListRights.ugcPay = ugcPay;
	}
	final int? ugcPayPreview = jsonConvert.convert<int>(json['ugc_pay_preview']);
	if (ugcPayPreview != null) {
		videoListRights.ugcPayPreview = ugcPayPreview;
	}
	return videoListRights;
}

Map<String, dynamic> $VideoListRightsToJson(VideoListRights entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['arc_pay'] = entity.arcPay;
	data['autoplay'] = entity.autoplay;
	data['bp'] = entity.bp;
	data['download'] = entity.download;
	data['elec'] = entity.elec;
	data['hd5'] = entity.hd5;
	data['is_cooperation'] = entity.isCooperation;
	data['movie'] = entity.movie;
	data['no_background'] = entity.noBackground;
	data['no_reprint'] = entity.noReprint;
	data['pay'] = entity.pay;
	data['pay_free_watch'] = entity.payFreeWatch;
	data['ugc_pay'] = entity.ugcPay;
	data['ugc_pay_preview'] = entity.ugcPayPreview;
	return data;
}

VideoListStat $VideoListStatFromJson(Map<String, dynamic> json) {
	final VideoListStat videoListStat = VideoListStat();
	final int? aid = jsonConvert.convert<int>(json['aid']);
	if (aid != null) {
		videoListStat.aid = aid;
	}
	final int? coin = jsonConvert.convert<int>(json['coin']);
	if (coin != null) {
		videoListStat.coin = coin;
	}
	final int? danmaku = jsonConvert.convert<int>(json['danmaku']);
	if (danmaku != null) {
		videoListStat.danmaku = danmaku;
	}
	final int? dislike = jsonConvert.convert<int>(json['dislike']);
	if (dislike != null) {
		videoListStat.dislike = dislike;
	}
	final int? favorite = jsonConvert.convert<int>(json['favorite']);
	if (favorite != null) {
		videoListStat.favorite = favorite;
	}
	final int? hisRank = jsonConvert.convert<int>(json['his_rank']);
	if (hisRank != null) {
		videoListStat.hisRank = hisRank;
	}
	final int? like = jsonConvert.convert<int>(json['like']);
	if (like != null) {
		videoListStat.like = like;
	}
	final int? nowRank = jsonConvert.convert<int>(json['now_rank']);
	if (nowRank != null) {
		videoListStat.nowRank = nowRank;
	}
	final int? reply = jsonConvert.convert<int>(json['reply']);
	if (reply != null) {
		videoListStat.reply = reply;
	}
	final int? share = jsonConvert.convert<int>(json['share']);
	if (share != null) {
		videoListStat.share = share;
	}
	final int? view = jsonConvert.convert<int>(json['view']);
	if (view != null) {
		videoListStat.view = view;
	}
	return videoListStat;
}

Map<String, dynamic> $VideoListStatToJson(VideoListStat entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['aid'] = entity.aid;
	data['coin'] = entity.coin;
	data['danmaku'] = entity.danmaku;
	data['dislike'] = entity.dislike;
	data['favorite'] = entity.favorite;
	data['his_rank'] = entity.hisRank;
	data['like'] = entity.like;
	data['now_rank'] = entity.nowRank;
	data['reply'] = entity.reply;
	data['share'] = entity.share;
	data['view'] = entity.view;
	return data;
}