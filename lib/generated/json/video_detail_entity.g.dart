import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/video_detail_entity.dart';

VideoDetailEntity $VideoDetailEntityFromJson(Map<String, dynamic> json) {
	final VideoDetailEntity videoDetailEntity = VideoDetailEntity();
	final VideoDetailCard? card = jsonConvert.convert<VideoDetailCard>(json['Card']);
	if (card != null) {
		videoDetailEntity.card = card;
	}
	final List<VideoDetailRelated>? related = jsonConvert.convertListNotNull<VideoDetailRelated>(json['Related']);
	if (related != null) {
		videoDetailEntity.related = related;
	}
	final VideoDetailReply? reply = jsonConvert.convert<VideoDetailReply>(json['Reply']);
	if (reply != null) {
		videoDetailEntity.reply = reply;
	}
	final List<VideoDetailTags>? tags = jsonConvert.convertListNotNull<VideoDetailTags>(json['Tags']);
	if (tags != null) {
		videoDetailEntity.tags = tags;
	}
	final VideoDetailView? view = jsonConvert.convert<VideoDetailView>(json['View']);
	if (view != null) {
		videoDetailEntity.view = view;
	}
	final VideoDetailHotShare? hotShare = jsonConvert.convert<VideoDetailHotShare>(json['hot_share']);
	if (hotShare != null) {
		videoDetailEntity.hotShare = hotShare;
	}
	final VideoDetailViewAddit? viewAddit = jsonConvert.convert<VideoDetailViewAddit>(json['view_addit']);
	if (viewAddit != null) {
		videoDetailEntity.viewAddit = viewAddit;
	}
	return videoDetailEntity;
}

Map<String, dynamic> $VideoDetailEntityToJson(VideoDetailEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['Card'] = entity.card?.toJson();
	data['Related'] =  entity.related?.map((v) => v.toJson()).toList();
	data['Reply'] = entity.reply?.toJson();
	data['Tags'] =  entity.tags?.map((v) => v.toJson()).toList();
	data['View'] = entity.view?.toJson();
	data['hot_share'] = entity.hotShare?.toJson();
	data['view_addit'] = entity.viewAddit?.toJson();
	return data;
}

VideoDetailCard $VideoDetailCardFromJson(Map<String, dynamic> json) {
	final VideoDetailCard videoDetailCard = VideoDetailCard();
	final int? archiveCount = jsonConvert.convert<int>(json['archive_count']);
	if (archiveCount != null) {
		videoDetailCard.archiveCount = archiveCount;
	}
	final int? articleCount = jsonConvert.convert<int>(json['article_count']);
	if (articleCount != null) {
		videoDetailCard.articleCount = articleCount;
	}
	final VideoDetailCardCard? card = jsonConvert.convert<VideoDetailCardCard>(json['card']);
	if (card != null) {
		videoDetailCard.card = card;
	}
	final int? follower = jsonConvert.convert<int>(json['follower']);
	if (follower != null) {
		videoDetailCard.follower = follower;
	}
	final bool? following = jsonConvert.convert<bool>(json['following']);
	if (following != null) {
		videoDetailCard.following = following;
	}
	final int? likeNum = jsonConvert.convert<int>(json['like_num']);
	if (likeNum != null) {
		videoDetailCard.likeNum = likeNum;
	}
	final VideoDetailCardSpace? space = jsonConvert.convert<VideoDetailCardSpace>(json['space']);
	if (space != null) {
		videoDetailCard.space = space;
	}
	return videoDetailCard;
}

Map<String, dynamic> $VideoDetailCardToJson(VideoDetailCard entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['archive_count'] = entity.archiveCount;
	data['article_count'] = entity.articleCount;
	data['card'] = entity.card?.toJson();
	data['follower'] = entity.follower;
	data['following'] = entity.following;
	data['like_num'] = entity.likeNum;
	data['space'] = entity.space?.toJson();
	return data;
}

VideoDetailCardCard $VideoDetailCardCardFromJson(Map<String, dynamic> json) {
	final VideoDetailCardCard videoDetailCardCard = VideoDetailCardCard();
	final String? displayRank = jsonConvert.convert<String>(json['DisplayRank']);
	if (displayRank != null) {
		videoDetailCardCard.displayRank = displayRank;
	}
	final VideoDetailCardCardOfficial? official = jsonConvert.convert<VideoDetailCardCardOfficial>(json['Official']);
	if (official != null) {
		videoDetailCardCard.official = official;
	}
	final bool? approve = jsonConvert.convert<bool>(json['approve']);
	if (approve != null) {
		videoDetailCardCard.approve = approve;
	}
	final int? article = jsonConvert.convert<int>(json['article']);
	if (article != null) {
		videoDetailCardCard.article = article;
	}
	final int? attention = jsonConvert.convert<int>(json['attention']);
	if (attention != null) {
		videoDetailCardCard.attention = attention;
	}
	final List<dynamic>? attentions = jsonConvert.convertListNotNull<dynamic>(json['attentions']);
	if (attentions != null) {
		videoDetailCardCard.attentions = attentions;
	}
	final String? birthday = jsonConvert.convert<String>(json['birthday']);
	if (birthday != null) {
		videoDetailCardCard.birthday = birthday;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		videoDetailCardCard.description = description;
	}
	final String? face = jsonConvert.convert<String>(json['face']);
	if (face != null) {
		videoDetailCardCard.face = face;
	}
	final int? faceNft = jsonConvert.convert<int>(json['face_nft']);
	if (faceNft != null) {
		videoDetailCardCard.faceNft = faceNft;
	}
	final int? faceNftType = jsonConvert.convert<int>(json['face_nft_type']);
	if (faceNftType != null) {
		videoDetailCardCard.faceNftType = faceNftType;
	}
	final int? fans = jsonConvert.convert<int>(json['fans']);
	if (fans != null) {
		videoDetailCardCard.fans = fans;
	}
	final int? friend = jsonConvert.convert<int>(json['friend']);
	if (friend != null) {
		videoDetailCardCard.friend = friend;
	}
	final int? isSeniorMember = jsonConvert.convert<int>(json['is_senior_member']);
	if (isSeniorMember != null) {
		videoDetailCardCard.isSeniorMember = isSeniorMember;
	}
	final VideoDetailCardCardLevelInfo? levelInfo = jsonConvert.convert<VideoDetailCardCardLevelInfo>(json['level_info']);
	if (levelInfo != null) {
		videoDetailCardCard.levelInfo = levelInfo;
	}
	final String? mid = jsonConvert.convert<String>(json['mid']);
	if (mid != null) {
		videoDetailCardCard.mid = mid;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoDetailCardCard.name = name;
	}
	final VideoDetailCardCardNameplate? nameplate = jsonConvert.convert<VideoDetailCardCardNameplate>(json['nameplate']);
	if (nameplate != null) {
		videoDetailCardCard.nameplate = nameplate;
	}
	final VideoDetailCardCardOfficialVerify? officialVerify = jsonConvert.convert<VideoDetailCardCardOfficialVerify>(json['official_verify']);
	if (officialVerify != null) {
		videoDetailCardCard.officialVerify = officialVerify;
	}
	final VideoDetailCardCardPendant? pendant = jsonConvert.convert<VideoDetailCardCardPendant>(json['pendant']);
	if (pendant != null) {
		videoDetailCardCard.pendant = pendant;
	}
	final String? place = jsonConvert.convert<String>(json['place']);
	if (place != null) {
		videoDetailCardCard.place = place;
	}
	final String? rank = jsonConvert.convert<String>(json['rank']);
	if (rank != null) {
		videoDetailCardCard.rank = rank;
	}
	final int? regtime = jsonConvert.convert<int>(json['regtime']);
	if (regtime != null) {
		videoDetailCardCard.regtime = regtime;
	}
	final String? sex = jsonConvert.convert<String>(json['sex']);
	if (sex != null) {
		videoDetailCardCard.sex = sex;
	}
	final String? sign = jsonConvert.convert<String>(json['sign']);
	if (sign != null) {
		videoDetailCardCard.sign = sign;
	}
	final int? spacesta = jsonConvert.convert<int>(json['spacesta']);
	if (spacesta != null) {
		videoDetailCardCard.spacesta = spacesta;
	}
	final VideoDetailCardCardVip? vip = jsonConvert.convert<VideoDetailCardCardVip>(json['vip']);
	if (vip != null) {
		videoDetailCardCard.vip = vip;
	}
	return videoDetailCardCard;
}

Map<String, dynamic> $VideoDetailCardCardToJson(VideoDetailCardCard entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['DisplayRank'] = entity.displayRank;
	data['Official'] = entity.official?.toJson();
	data['approve'] = entity.approve;
	data['article'] = entity.article;
	data['attention'] = entity.attention;
	data['attentions'] =  entity.attentions;
	data['birthday'] = entity.birthday;
	data['description'] = entity.description;
	data['face'] = entity.face;
	data['face_nft'] = entity.faceNft;
	data['face_nft_type'] = entity.faceNftType;
	data['fans'] = entity.fans;
	data['friend'] = entity.friend;
	data['is_senior_member'] = entity.isSeniorMember;
	data['level_info'] = entity.levelInfo?.toJson();
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	data['nameplate'] = entity.nameplate?.toJson();
	data['official_verify'] = entity.officialVerify?.toJson();
	data['pendant'] = entity.pendant?.toJson();
	data['place'] = entity.place;
	data['rank'] = entity.rank;
	data['regtime'] = entity.regtime;
	data['sex'] = entity.sex;
	data['sign'] = entity.sign;
	data['spacesta'] = entity.spacesta;
	data['vip'] = entity.vip?.toJson();
	return data;
}

VideoDetailCardCardOfficial $VideoDetailCardCardOfficialFromJson(Map<String, dynamic> json) {
	final VideoDetailCardCardOfficial videoDetailCardCardOfficial = VideoDetailCardCardOfficial();
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		videoDetailCardCardOfficial.desc = desc;
	}
	final int? role = jsonConvert.convert<int>(json['role']);
	if (role != null) {
		videoDetailCardCardOfficial.role = role;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		videoDetailCardCardOfficial.title = title;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoDetailCardCardOfficial.type = type;
	}
	return videoDetailCardCardOfficial;
}

Map<String, dynamic> $VideoDetailCardCardOfficialToJson(VideoDetailCardCardOfficial entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['desc'] = entity.desc;
	data['role'] = entity.role;
	data['title'] = entity.title;
	data['type'] = entity.type;
	return data;
}

VideoDetailCardCardLevelInfo $VideoDetailCardCardLevelInfoFromJson(Map<String, dynamic> json) {
	final VideoDetailCardCardLevelInfo videoDetailCardCardLevelInfo = VideoDetailCardCardLevelInfo();
	final int? currentExp = jsonConvert.convert<int>(json['current_exp']);
	if (currentExp != null) {
		videoDetailCardCardLevelInfo.currentExp = currentExp;
	}
	final int? currentLevel = jsonConvert.convert<int>(json['current_level']);
	if (currentLevel != null) {
		videoDetailCardCardLevelInfo.currentLevel = currentLevel;
	}
	final int? currentMin = jsonConvert.convert<int>(json['current_min']);
	if (currentMin != null) {
		videoDetailCardCardLevelInfo.currentMin = currentMin;
	}
	final int? nextExp = jsonConvert.convert<int>(json['next_exp']);
	if (nextExp != null) {
		videoDetailCardCardLevelInfo.nextExp = nextExp;
	}
	return videoDetailCardCardLevelInfo;
}

Map<String, dynamic> $VideoDetailCardCardLevelInfoToJson(VideoDetailCardCardLevelInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['current_exp'] = entity.currentExp;
	data['current_level'] = entity.currentLevel;
	data['current_min'] = entity.currentMin;
	data['next_exp'] = entity.nextExp;
	return data;
}

VideoDetailCardCardNameplate $VideoDetailCardCardNameplateFromJson(Map<String, dynamic> json) {
	final VideoDetailCardCardNameplate videoDetailCardCardNameplate = VideoDetailCardCardNameplate();
	final String? condition = jsonConvert.convert<String>(json['condition']);
	if (condition != null) {
		videoDetailCardCardNameplate.condition = condition;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		videoDetailCardCardNameplate.image = image;
	}
	final String? imageSmall = jsonConvert.convert<String>(json['image_small']);
	if (imageSmall != null) {
		videoDetailCardCardNameplate.imageSmall = imageSmall;
	}
	final String? level = jsonConvert.convert<String>(json['level']);
	if (level != null) {
		videoDetailCardCardNameplate.level = level;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoDetailCardCardNameplate.name = name;
	}
	final int? nid = jsonConvert.convert<int>(json['nid']);
	if (nid != null) {
		videoDetailCardCardNameplate.nid = nid;
	}
	return videoDetailCardCardNameplate;
}

Map<String, dynamic> $VideoDetailCardCardNameplateToJson(VideoDetailCardCardNameplate entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['condition'] = entity.condition;
	data['image'] = entity.image;
	data['image_small'] = entity.imageSmall;
	data['level'] = entity.level;
	data['name'] = entity.name;
	data['nid'] = entity.nid;
	return data;
}

VideoDetailCardCardOfficialVerify $VideoDetailCardCardOfficialVerifyFromJson(Map<String, dynamic> json) {
	final VideoDetailCardCardOfficialVerify videoDetailCardCardOfficialVerify = VideoDetailCardCardOfficialVerify();
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		videoDetailCardCardOfficialVerify.desc = desc;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoDetailCardCardOfficialVerify.type = type;
	}
	return videoDetailCardCardOfficialVerify;
}

Map<String, dynamic> $VideoDetailCardCardOfficialVerifyToJson(VideoDetailCardCardOfficialVerify entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['desc'] = entity.desc;
	data['type'] = entity.type;
	return data;
}

VideoDetailCardCardPendant $VideoDetailCardCardPendantFromJson(Map<String, dynamic> json) {
	final VideoDetailCardCardPendant videoDetailCardCardPendant = VideoDetailCardCardPendant();
	final int? expire = jsonConvert.convert<int>(json['expire']);
	if (expire != null) {
		videoDetailCardCardPendant.expire = expire;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		videoDetailCardCardPendant.image = image;
	}
	final String? imageEnhance = jsonConvert.convert<String>(json['image_enhance']);
	if (imageEnhance != null) {
		videoDetailCardCardPendant.imageEnhance = imageEnhance;
	}
	final String? imageEnhanceFrame = jsonConvert.convert<String>(json['image_enhance_frame']);
	if (imageEnhanceFrame != null) {
		videoDetailCardCardPendant.imageEnhanceFrame = imageEnhanceFrame;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoDetailCardCardPendant.name = name;
	}
	final int? pid = jsonConvert.convert<int>(json['pid']);
	if (pid != null) {
		videoDetailCardCardPendant.pid = pid;
	}
	return videoDetailCardCardPendant;
}

Map<String, dynamic> $VideoDetailCardCardPendantToJson(VideoDetailCardCardPendant entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['expire'] = entity.expire;
	data['image'] = entity.image;
	data['image_enhance'] = entity.imageEnhance;
	data['image_enhance_frame'] = entity.imageEnhanceFrame;
	data['name'] = entity.name;
	data['pid'] = entity.pid;
	return data;
}

VideoDetailCardCardVip $VideoDetailCardCardVipFromJson(Map<String, dynamic> json) {
	final VideoDetailCardCardVip videoDetailCardCardVip = VideoDetailCardCardVip();
	final int? avatarSubscript = jsonConvert.convert<int>(json['avatar_subscript']);
	if (avatarSubscript != null) {
		videoDetailCardCardVip.avatarSubscript = avatarSubscript;
	}
	final String? avatarSubscriptUrl = jsonConvert.convert<String>(json['avatar_subscript_url']);
	if (avatarSubscriptUrl != null) {
		videoDetailCardCardVip.avatarSubscriptUrl = avatarSubscriptUrl;
	}
	final int? dueDate = jsonConvert.convert<int>(json['due_date']);
	if (dueDate != null) {
		videoDetailCardCardVip.dueDate = dueDate;
	}
	final VideoDetailCardCardVipLabel? label = jsonConvert.convert<VideoDetailCardCardVipLabel>(json['label']);
	if (label != null) {
		videoDetailCardCardVip.label = label;
	}
	final String? nicknameColor = jsonConvert.convert<String>(json['nickname_color']);
	if (nicknameColor != null) {
		videoDetailCardCardVip.nicknameColor = nicknameColor;
	}
	final int? role = jsonConvert.convert<int>(json['role']);
	if (role != null) {
		videoDetailCardCardVip.role = role;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		videoDetailCardCardVip.status = status;
	}
	final int? themeType = jsonConvert.convert<int>(json['theme_type']);
	if (themeType != null) {
		videoDetailCardCardVip.themeType = themeType;
	}
	final int? tvVipPayType = jsonConvert.convert<int>(json['tv_vip_pay_type']);
	if (tvVipPayType != null) {
		videoDetailCardCardVip.tvVipPayType = tvVipPayType;
	}
	final int? tvVipStatus = jsonConvert.convert<int>(json['tv_vip_status']);
	if (tvVipStatus != null) {
		videoDetailCardCardVip.tvVipStatus = tvVipStatus;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoDetailCardCardVip.type = type;
	}
	final int? vipStatus = jsonConvert.convert<int>(json['vipStatus']);
	if (vipStatus != null) {
		videoDetailCardCardVip.vipStatus = vipStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		videoDetailCardCardVip.vipType = vipType;
	}
	final int? vipPayType = jsonConvert.convert<int>(json['vip_pay_type']);
	if (vipPayType != null) {
		videoDetailCardCardVip.vipPayType = vipPayType;
	}
	return videoDetailCardCardVip;
}

Map<String, dynamic> $VideoDetailCardCardVipToJson(VideoDetailCardCardVip entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['avatar_subscript'] = entity.avatarSubscript;
	data['avatar_subscript_url'] = entity.avatarSubscriptUrl;
	data['due_date'] = entity.dueDate;
	data['label'] = entity.label?.toJson();
	data['nickname_color'] = entity.nicknameColor;
	data['role'] = entity.role;
	data['status'] = entity.status;
	data['theme_type'] = entity.themeType;
	data['tv_vip_pay_type'] = entity.tvVipPayType;
	data['tv_vip_status'] = entity.tvVipStatus;
	data['type'] = entity.type;
	data['vipStatus'] = entity.vipStatus;
	data['vipType'] = entity.vipType;
	data['vip_pay_type'] = entity.vipPayType;
	return data;
}

VideoDetailCardCardVipLabel $VideoDetailCardCardVipLabelFromJson(Map<String, dynamic> json) {
	final VideoDetailCardCardVipLabel videoDetailCardCardVipLabel = VideoDetailCardCardVipLabel();
	final String? bgColor = jsonConvert.convert<String>(json['bg_color']);
	if (bgColor != null) {
		videoDetailCardCardVipLabel.bgColor = bgColor;
	}
	final int? bgStyle = jsonConvert.convert<int>(json['bg_style']);
	if (bgStyle != null) {
		videoDetailCardCardVipLabel.bgStyle = bgStyle;
	}
	final String? borderColor = jsonConvert.convert<String>(json['border_color']);
	if (borderColor != null) {
		videoDetailCardCardVipLabel.borderColor = borderColor;
	}
	final String? imgLabelUriHans = jsonConvert.convert<String>(json['img_label_uri_hans']);
	if (imgLabelUriHans != null) {
		videoDetailCardCardVipLabel.imgLabelUriHans = imgLabelUriHans;
	}
	final String? imgLabelUriHansStatic = jsonConvert.convert<String>(json['img_label_uri_hans_static']);
	if (imgLabelUriHansStatic != null) {
		videoDetailCardCardVipLabel.imgLabelUriHansStatic = imgLabelUriHansStatic;
	}
	final String? imgLabelUriHant = jsonConvert.convert<String>(json['img_label_uri_hant']);
	if (imgLabelUriHant != null) {
		videoDetailCardCardVipLabel.imgLabelUriHant = imgLabelUriHant;
	}
	final String? imgLabelUriHantStatic = jsonConvert.convert<String>(json['img_label_uri_hant_static']);
	if (imgLabelUriHantStatic != null) {
		videoDetailCardCardVipLabel.imgLabelUriHantStatic = imgLabelUriHantStatic;
	}
	final String? labelTheme = jsonConvert.convert<String>(json['label_theme']);
	if (labelTheme != null) {
		videoDetailCardCardVipLabel.labelTheme = labelTheme;
	}
	final String? path = jsonConvert.convert<String>(json['path']);
	if (path != null) {
		videoDetailCardCardVipLabel.path = path;
	}
	final String? text = jsonConvert.convert<String>(json['text']);
	if (text != null) {
		videoDetailCardCardVipLabel.text = text;
	}
	final String? textColor = jsonConvert.convert<String>(json['text_color']);
	if (textColor != null) {
		videoDetailCardCardVipLabel.textColor = textColor;
	}
	final bool? useImgLabel = jsonConvert.convert<bool>(json['use_img_label']);
	if (useImgLabel != null) {
		videoDetailCardCardVipLabel.useImgLabel = useImgLabel;
	}
	return videoDetailCardCardVipLabel;
}

Map<String, dynamic> $VideoDetailCardCardVipLabelToJson(VideoDetailCardCardVipLabel entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['bg_color'] = entity.bgColor;
	data['bg_style'] = entity.bgStyle;
	data['border_color'] = entity.borderColor;
	data['img_label_uri_hans'] = entity.imgLabelUriHans;
	data['img_label_uri_hans_static'] = entity.imgLabelUriHansStatic;
	data['img_label_uri_hant'] = entity.imgLabelUriHant;
	data['img_label_uri_hant_static'] = entity.imgLabelUriHantStatic;
	data['label_theme'] = entity.labelTheme;
	data['path'] = entity.path;
	data['text'] = entity.text;
	data['text_color'] = entity.textColor;
	data['use_img_label'] = entity.useImgLabel;
	return data;
}

VideoDetailCardSpace $VideoDetailCardSpaceFromJson(Map<String, dynamic> json) {
	final VideoDetailCardSpace videoDetailCardSpace = VideoDetailCardSpace();
	final String? lImg = jsonConvert.convert<String>(json['l_img']);
	if (lImg != null) {
		videoDetailCardSpace.lImg = lImg;
	}
	final String? sImg = jsonConvert.convert<String>(json['s_img']);
	if (sImg != null) {
		videoDetailCardSpace.sImg = sImg;
	}
	return videoDetailCardSpace;
}

Map<String, dynamic> $VideoDetailCardSpaceToJson(VideoDetailCardSpace entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['l_img'] = entity.lImg;
	data['s_img'] = entity.sImg;
	return data;
}

VideoDetailRelated $VideoDetailRelatedFromJson(Map<String, dynamic> json) {
	final VideoDetailRelated videoDetailRelated = VideoDetailRelated();
	final int? aid = jsonConvert.convert<int>(json['aid']);
	if (aid != null) {
		videoDetailRelated.aid = aid;
	}
	final String? bvid = jsonConvert.convert<String>(json['bvid']);
	if (bvid != null) {
		videoDetailRelated.bvid = bvid;
	}
	final int? cid = jsonConvert.convert<int>(json['cid']);
	if (cid != null) {
		videoDetailRelated.cid = cid;
	}
	final int? copyright = jsonConvert.convert<int>(json['copyright']);
	if (copyright != null) {
		videoDetailRelated.copyright = copyright;
	}
	final int? ctime = jsonConvert.convert<int>(json['ctime']);
	if (ctime != null) {
		videoDetailRelated.ctime = ctime;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		videoDetailRelated.desc = desc;
	}
	final VideoDetailRelatedDimension? dimension = jsonConvert.convert<VideoDetailRelatedDimension>(json['dimension']);
	if (dimension != null) {
		videoDetailRelated.dimension = dimension;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		videoDetailRelated.duration = duration;
	}
	final String? xDynamic = jsonConvert.convert<String>(json['dynamic']);
	if (xDynamic != null) {
		videoDetailRelated.xDynamic = xDynamic;
	}
	final String? firstFrame = jsonConvert.convert<String>(json['first_frame']);
	if (firstFrame != null) {
		videoDetailRelated.firstFrame = firstFrame;
	}
	final bool? isOgv = jsonConvert.convert<bool>(json['is_ogv']);
	if (isOgv != null) {
		videoDetailRelated.isOgv = isOgv;
	}
	final int? missionId = jsonConvert.convert<int>(json['mission_id']);
	if (missionId != null) {
		videoDetailRelated.missionId = missionId;
	}
	final VideoDetailRelatedOwner? owner = jsonConvert.convert<VideoDetailRelatedOwner>(json['owner']);
	if (owner != null) {
		videoDetailRelated.owner = owner;
	}
	final String? pic = jsonConvert.convert<String>(json['pic']);
	if (pic != null) {
		videoDetailRelated.pic = pic;
	}
	final String? pubLocation = jsonConvert.convert<String>(json['pub_location']);
	if (pubLocation != null) {
		videoDetailRelated.pubLocation = pubLocation;
	}
	final int? pubdate = jsonConvert.convert<int>(json['pubdate']);
	if (pubdate != null) {
		videoDetailRelated.pubdate = pubdate;
	}
	final String? rcmdReason = jsonConvert.convert<String>(json['rcmd_reason']);
	if (rcmdReason != null) {
		videoDetailRelated.rcmdReason = rcmdReason;
	}
	final VideoDetailRelatedRights? rights = jsonConvert.convert<VideoDetailRelatedRights>(json['rights']);
	if (rights != null) {
		videoDetailRelated.rights = rights;
	}
	final int? seasonType = jsonConvert.convert<int>(json['season_type']);
	if (seasonType != null) {
		videoDetailRelated.seasonType = seasonType;
	}
	final String? shortLink = jsonConvert.convert<String>(json['short_link']);
	if (shortLink != null) {
		videoDetailRelated.shortLink = shortLink;
	}
	final String? shortLinkV2 = jsonConvert.convert<String>(json['short_link_v2']);
	if (shortLinkV2 != null) {
		videoDetailRelated.shortLinkV2 = shortLinkV2;
	}
	final VideoDetailRelatedStat? stat = jsonConvert.convert<VideoDetailRelatedStat>(json['stat']);
	if (stat != null) {
		videoDetailRelated.stat = stat;
	}
	final int? state = jsonConvert.convert<int>(json['state']);
	if (state != null) {
		videoDetailRelated.state = state;
	}
	final int? tid = jsonConvert.convert<int>(json['tid']);
	if (tid != null) {
		videoDetailRelated.tid = tid;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		videoDetailRelated.title = title;
	}
	final String? tname = jsonConvert.convert<String>(json['tname']);
	if (tname != null) {
		videoDetailRelated.tname = tname;
	}
	final int? videos = jsonConvert.convert<int>(json['videos']);
	if (videos != null) {
		videoDetailRelated.videos = videos;
	}
	final int? upFromV2 = jsonConvert.convert<int>(json['up_from_v2']);
	if (upFromV2 != null) {
		videoDetailRelated.upFromV2 = upFromV2;
	}
	final int? seasonId = jsonConvert.convert<int>(json['season_id']);
	if (seasonId != null) {
		videoDetailRelated.seasonId = seasonId;
	}
	return videoDetailRelated;
}

Map<String, dynamic> $VideoDetailRelatedToJson(VideoDetailRelated entity) {
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
	data['is_ogv'] = entity.isOgv;
	data['mission_id'] = entity.missionId;
	data['owner'] = entity.owner?.toJson();
	data['pic'] = entity.pic;
	data['pub_location'] = entity.pubLocation;
	data['pubdate'] = entity.pubdate;
	data['rcmd_reason'] = entity.rcmdReason;
	data['rights'] = entity.rights?.toJson();
	data['season_type'] = entity.seasonType;
	data['short_link'] = entity.shortLink;
	data['short_link_v2'] = entity.shortLinkV2;
	data['stat'] = entity.stat?.toJson();
	data['state'] = entity.state;
	data['tid'] = entity.tid;
	data['title'] = entity.title;
	data['tname'] = entity.tname;
	data['videos'] = entity.videos;
	data['up_from_v2'] = entity.upFromV2;
	data['season_id'] = entity.seasonId;
	return data;
}

VideoDetailRelatedDimension $VideoDetailRelatedDimensionFromJson(Map<String, dynamic> json) {
	final VideoDetailRelatedDimension videoDetailRelatedDimension = VideoDetailRelatedDimension();
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		videoDetailRelatedDimension.height = height;
	}
	final int? rotate = jsonConvert.convert<int>(json['rotate']);
	if (rotate != null) {
		videoDetailRelatedDimension.rotate = rotate;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		videoDetailRelatedDimension.width = width;
	}
	return videoDetailRelatedDimension;
}

Map<String, dynamic> $VideoDetailRelatedDimensionToJson(VideoDetailRelatedDimension entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['height'] = entity.height;
	data['rotate'] = entity.rotate;
	data['width'] = entity.width;
	return data;
}

VideoDetailRelatedOwner $VideoDetailRelatedOwnerFromJson(Map<String, dynamic> json) {
	final VideoDetailRelatedOwner videoDetailRelatedOwner = VideoDetailRelatedOwner();
	final String? face = jsonConvert.convert<String>(json['face']);
	if (face != null) {
		videoDetailRelatedOwner.face = face;
	}
	final int? mid = jsonConvert.convert<int>(json['mid']);
	if (mid != null) {
		videoDetailRelatedOwner.mid = mid;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoDetailRelatedOwner.name = name;
	}
	return videoDetailRelatedOwner;
}

Map<String, dynamic> $VideoDetailRelatedOwnerToJson(VideoDetailRelatedOwner entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['face'] = entity.face;
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	return data;
}

VideoDetailRelatedRights $VideoDetailRelatedRightsFromJson(Map<String, dynamic> json) {
	final VideoDetailRelatedRights videoDetailRelatedRights = VideoDetailRelatedRights();
	final int? arcPay = jsonConvert.convert<int>(json['arc_pay']);
	if (arcPay != null) {
		videoDetailRelatedRights.arcPay = arcPay;
	}
	final int? autoplay = jsonConvert.convert<int>(json['autoplay']);
	if (autoplay != null) {
		videoDetailRelatedRights.autoplay = autoplay;
	}
	final int? bp = jsonConvert.convert<int>(json['bp']);
	if (bp != null) {
		videoDetailRelatedRights.bp = bp;
	}
	final int? download = jsonConvert.convert<int>(json['download']);
	if (download != null) {
		videoDetailRelatedRights.download = download;
	}
	final int? elec = jsonConvert.convert<int>(json['elec']);
	if (elec != null) {
		videoDetailRelatedRights.elec = elec;
	}
	final int? hd5 = jsonConvert.convert<int>(json['hd5']);
	if (hd5 != null) {
		videoDetailRelatedRights.hd5 = hd5;
	}
	final int? isCooperation = jsonConvert.convert<int>(json['is_cooperation']);
	if (isCooperation != null) {
		videoDetailRelatedRights.isCooperation = isCooperation;
	}
	final int? movie = jsonConvert.convert<int>(json['movie']);
	if (movie != null) {
		videoDetailRelatedRights.movie = movie;
	}
	final int? noBackground = jsonConvert.convert<int>(json['no_background']);
	if (noBackground != null) {
		videoDetailRelatedRights.noBackground = noBackground;
	}
	final int? noReprint = jsonConvert.convert<int>(json['no_reprint']);
	if (noReprint != null) {
		videoDetailRelatedRights.noReprint = noReprint;
	}
	final int? pay = jsonConvert.convert<int>(json['pay']);
	if (pay != null) {
		videoDetailRelatedRights.pay = pay;
	}
	final int? payFreeWatch = jsonConvert.convert<int>(json['pay_free_watch']);
	if (payFreeWatch != null) {
		videoDetailRelatedRights.payFreeWatch = payFreeWatch;
	}
	final int? ugcPay = jsonConvert.convert<int>(json['ugc_pay']);
	if (ugcPay != null) {
		videoDetailRelatedRights.ugcPay = ugcPay;
	}
	final int? ugcPayPreview = jsonConvert.convert<int>(json['ugc_pay_preview']);
	if (ugcPayPreview != null) {
		videoDetailRelatedRights.ugcPayPreview = ugcPayPreview;
	}
	return videoDetailRelatedRights;
}

Map<String, dynamic> $VideoDetailRelatedRightsToJson(VideoDetailRelatedRights entity) {
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

VideoDetailRelatedStat $VideoDetailRelatedStatFromJson(Map<String, dynamic> json) {
	final VideoDetailRelatedStat videoDetailRelatedStat = VideoDetailRelatedStat();
	final int? aid = jsonConvert.convert<int>(json['aid']);
	if (aid != null) {
		videoDetailRelatedStat.aid = aid;
	}
	final int? coin = jsonConvert.convert<int>(json['coin']);
	if (coin != null) {
		videoDetailRelatedStat.coin = coin;
	}
	final int? danmaku = jsonConvert.convert<int>(json['danmaku']);
	if (danmaku != null) {
		videoDetailRelatedStat.danmaku = danmaku;
	}
	final int? dislike = jsonConvert.convert<int>(json['dislike']);
	if (dislike != null) {
		videoDetailRelatedStat.dislike = dislike;
	}
	final int? favorite = jsonConvert.convert<int>(json['favorite']);
	if (favorite != null) {
		videoDetailRelatedStat.favorite = favorite;
	}
	final int? hisRank = jsonConvert.convert<int>(json['his_rank']);
	if (hisRank != null) {
		videoDetailRelatedStat.hisRank = hisRank;
	}
	final int? like = jsonConvert.convert<int>(json['like']);
	if (like != null) {
		videoDetailRelatedStat.like = like;
	}
	final int? nowRank = jsonConvert.convert<int>(json['now_rank']);
	if (nowRank != null) {
		videoDetailRelatedStat.nowRank = nowRank;
	}
	final int? reply = jsonConvert.convert<int>(json['reply']);
	if (reply != null) {
		videoDetailRelatedStat.reply = reply;
	}
	final int? share = jsonConvert.convert<int>(json['share']);
	if (share != null) {
		videoDetailRelatedStat.share = share;
	}
	final int? view = jsonConvert.convert<int>(json['view']);
	if (view != null) {
		videoDetailRelatedStat.view = view;
	}
	return videoDetailRelatedStat;
}

Map<String, dynamic> $VideoDetailRelatedStatToJson(VideoDetailRelatedStat entity) {
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

VideoDetailReply $VideoDetailReplyFromJson(Map<String, dynamic> json) {
	final VideoDetailReply videoDetailReply = VideoDetailReply();
	final VideoDetailReplyPage? page = jsonConvert.convert<VideoDetailReplyPage>(json['page']);
	if (page != null) {
		videoDetailReply.page = page;
	}
	final List<VideoDetailReplyReplies>? replies = jsonConvert.convertListNotNull<VideoDetailReplyReplies>(json['replies']);
	if (replies != null) {
		videoDetailReply.replies = replies;
	}
	return videoDetailReply;
}

Map<String, dynamic> $VideoDetailReplyToJson(VideoDetailReply entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['page'] = entity.page?.toJson();
	data['replies'] =  entity.replies?.map((v) => v.toJson()).toList();
	return data;
}

VideoDetailReplyPage $VideoDetailReplyPageFromJson(Map<String, dynamic> json) {
	final VideoDetailReplyPage videoDetailReplyPage = VideoDetailReplyPage();
	final int? acount = jsonConvert.convert<int>(json['acount']);
	if (acount != null) {
		videoDetailReplyPage.acount = acount;
	}
	final int? count = jsonConvert.convert<int>(json['count']);
	if (count != null) {
		videoDetailReplyPage.count = count;
	}
	final int? num = jsonConvert.convert<int>(json['num']);
	if (num != null) {
		videoDetailReplyPage.num = num;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		videoDetailReplyPage.size = size;
	}
	return videoDetailReplyPage;
}

Map<String, dynamic> $VideoDetailReplyPageToJson(VideoDetailReplyPage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['acount'] = entity.acount;
	data['count'] = entity.count;
	data['num'] = entity.num;
	data['size'] = entity.size;
	return data;
}

VideoDetailReplyReplies $VideoDetailReplyRepliesFromJson(Map<String, dynamic> json) {
	final VideoDetailReplyReplies videoDetailReplyReplies = VideoDetailReplyReplies();
	final int? action = jsonConvert.convert<int>(json['action']);
	if (action != null) {
		videoDetailReplyReplies.action = action;
	}
	final int? assist = jsonConvert.convert<int>(json['assist']);
	if (assist != null) {
		videoDetailReplyReplies.assist = assist;
	}
	final int? attr = jsonConvert.convert<int>(json['attr']);
	if (attr != null) {
		videoDetailReplyReplies.attr = attr;
	}
	final VideoDetailReplyRepliesContent? content = jsonConvert.convert<VideoDetailReplyRepliesContent>(json['content']);
	if (content != null) {
		videoDetailReplyReplies.content = content;
	}
	final int? count = jsonConvert.convert<int>(json['count']);
	if (count != null) {
		videoDetailReplyReplies.count = count;
	}
	final int? ctime = jsonConvert.convert<int>(json['ctime']);
	if (ctime != null) {
		videoDetailReplyReplies.ctime = ctime;
	}
	final int? dialog = jsonConvert.convert<int>(json['dialog']);
	if (dialog != null) {
		videoDetailReplyReplies.dialog = dialog;
	}
	final int? fansgrade = jsonConvert.convert<int>(json['fansgrade']);
	if (fansgrade != null) {
		videoDetailReplyReplies.fansgrade = fansgrade;
	}
	final int? floor = jsonConvert.convert<int>(json['floor']);
	if (floor != null) {
		videoDetailReplyReplies.floor = floor;
	}
	final int? like = jsonConvert.convert<int>(json['like']);
	if (like != null) {
		videoDetailReplyReplies.like = like;
	}
	final int? mid = jsonConvert.convert<int>(json['mid']);
	if (mid != null) {
		videoDetailReplyReplies.mid = mid;
	}
	final int? oid = jsonConvert.convert<int>(json['oid']);
	if (oid != null) {
		videoDetailReplyReplies.oid = oid;
	}
	final int? parent = jsonConvert.convert<int>(json['parent']);
	if (parent != null) {
		videoDetailReplyReplies.parent = parent;
	}
	final int? rcount = jsonConvert.convert<int>(json['rcount']);
	if (rcount != null) {
		videoDetailReplyReplies.rcount = rcount;
	}
	final int? root = jsonConvert.convert<int>(json['root']);
	if (root != null) {
		videoDetailReplyReplies.root = root;
	}
	final int? rpid = jsonConvert.convert<int>(json['rpid']);
	if (rpid != null) {
		videoDetailReplyReplies.rpid = rpid;
	}
	final bool? showFollow = jsonConvert.convert<bool>(json['show_follow']);
	if (showFollow != null) {
		videoDetailReplyReplies.showFollow = showFollow;
	}
	final int? state = jsonConvert.convert<int>(json['state']);
	if (state != null) {
		videoDetailReplyReplies.state = state;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoDetailReplyReplies.type = type;
	}
	return videoDetailReplyReplies;
}

Map<String, dynamic> $VideoDetailReplyRepliesToJson(VideoDetailReplyReplies entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['action'] = entity.action;
	data['assist'] = entity.assist;
	data['attr'] = entity.attr;
	data['content'] = entity.content?.toJson();
	data['count'] = entity.count;
	data['ctime'] = entity.ctime;
	data['dialog'] = entity.dialog;
	data['fansgrade'] = entity.fansgrade;
	data['floor'] = entity.floor;
	data['like'] = entity.like;
	data['mid'] = entity.mid;
	data['oid'] = entity.oid;
	data['parent'] = entity.parent;
	data['rcount'] = entity.rcount;
	data['root'] = entity.root;
	data['rpid'] = entity.rpid;
	data['show_follow'] = entity.showFollow;
	data['state'] = entity.state;
	data['type'] = entity.type;
	return data;
}

VideoDetailReplyRepliesContent $VideoDetailReplyRepliesContentFromJson(Map<String, dynamic> json) {
	final VideoDetailReplyRepliesContent videoDetailReplyRepliesContent = VideoDetailReplyRepliesContent();
	final String? device = jsonConvert.convert<String>(json['device']);
	if (device != null) {
		videoDetailReplyRepliesContent.device = device;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		videoDetailReplyRepliesContent.message = message;
	}
	final int? plat = jsonConvert.convert<int>(json['plat']);
	if (plat != null) {
		videoDetailReplyRepliesContent.plat = plat;
	}
	return videoDetailReplyRepliesContent;
}

Map<String, dynamic> $VideoDetailReplyRepliesContentToJson(VideoDetailReplyRepliesContent entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['device'] = entity.device;
	data['message'] = entity.message;
	data['plat'] = entity.plat;
	return data;
}

VideoDetailTags $VideoDetailTagsFromJson(Map<String, dynamic> json) {
	final VideoDetailTags videoDetailTags = VideoDetailTags();
	final int? alpha = jsonConvert.convert<int>(json['alpha']);
	if (alpha != null) {
		videoDetailTags.alpha = alpha;
	}
	final String? archiveCount = jsonConvert.convert<String>(json['archive_count']);
	if (archiveCount != null) {
		videoDetailTags.archiveCount = archiveCount;
	}
	final int? attribute = jsonConvert.convert<int>(json['attribute']);
	if (attribute != null) {
		videoDetailTags.attribute = attribute;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		videoDetailTags.color = color;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		videoDetailTags.content = content;
	}
	final VideoDetailTagsCount? count = jsonConvert.convert<VideoDetailTagsCount>(json['count']);
	if (count != null) {
		videoDetailTags.count = count;
	}
	final String? cover = jsonConvert.convert<String>(json['cover']);
	if (cover != null) {
		videoDetailTags.cover = cover;
	}
	final int? ctime = jsonConvert.convert<int>(json['ctime']);
	if (ctime != null) {
		videoDetailTags.ctime = ctime;
	}
	final int? extraAttr = jsonConvert.convert<int>(json['extra_attr']);
	if (extraAttr != null) {
		videoDetailTags.extraAttr = extraAttr;
	}
	final int? featuredCount = jsonConvert.convert<int>(json['featured_count']);
	if (featuredCount != null) {
		videoDetailTags.featuredCount = featuredCount;
	}
	final int? hated = jsonConvert.convert<int>(json['hated']);
	if (hated != null) {
		videoDetailTags.hated = hated;
	}
	final int? hates = jsonConvert.convert<int>(json['hates']);
	if (hates != null) {
		videoDetailTags.hates = hates;
	}
	final String? headCover = jsonConvert.convert<String>(json['head_cover']);
	if (headCover != null) {
		videoDetailTags.headCover = headCover;
	}
	final bool? isActivity = jsonConvert.convert<bool>(json['is_activity']);
	if (isActivity != null) {
		videoDetailTags.isActivity = isActivity;
	}
	final int? isAtten = jsonConvert.convert<int>(json['is_atten']);
	if (isAtten != null) {
		videoDetailTags.isAtten = isAtten;
	}
	final bool? isSeason = jsonConvert.convert<bool>(json['is_season']);
	if (isSeason != null) {
		videoDetailTags.isSeason = isSeason;
	}
	final String? jumpUrl = jsonConvert.convert<String>(json['jump_url']);
	if (jumpUrl != null) {
		videoDetailTags.jumpUrl = jumpUrl;
	}
	final int? liked = jsonConvert.convert<int>(json['liked']);
	if (liked != null) {
		videoDetailTags.liked = liked;
	}
	final int? likes = jsonConvert.convert<int>(json['likes']);
	if (likes != null) {
		videoDetailTags.likes = likes;
	}
	final String? musicId = jsonConvert.convert<String>(json['music_id']);
	if (musicId != null) {
		videoDetailTags.musicId = musicId;
	}
	final String? shortContent = jsonConvert.convert<String>(json['short_content']);
	if (shortContent != null) {
		videoDetailTags.shortContent = shortContent;
	}
	final int? state = jsonConvert.convert<int>(json['state']);
	if (state != null) {
		videoDetailTags.state = state;
	}
	final int? subscribedCount = jsonConvert.convert<int>(json['subscribed_count']);
	if (subscribedCount != null) {
		videoDetailTags.subscribedCount = subscribedCount;
	}
	final int? tagId = jsonConvert.convert<int>(json['tag_id']);
	if (tagId != null) {
		videoDetailTags.tagId = tagId;
	}
	final String? tagName = jsonConvert.convert<String>(json['tag_name']);
	if (tagName != null) {
		videoDetailTags.tagName = tagName;
	}
	final String? tagType = jsonConvert.convert<String>(json['tag_type']);
	if (tagType != null) {
		videoDetailTags.tagType = tagType;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoDetailTags.type = type;
	}
	return videoDetailTags;
}

Map<String, dynamic> $VideoDetailTagsToJson(VideoDetailTags entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['alpha'] = entity.alpha;
	data['archive_count'] = entity.archiveCount;
	data['attribute'] = entity.attribute;
	data['color'] = entity.color;
	data['content'] = entity.content;
	data['count'] = entity.count?.toJson();
	data['cover'] = entity.cover;
	data['ctime'] = entity.ctime;
	data['extra_attr'] = entity.extraAttr;
	data['featured_count'] = entity.featuredCount;
	data['hated'] = entity.hated;
	data['hates'] = entity.hates;
	data['head_cover'] = entity.headCover;
	data['is_activity'] = entity.isActivity;
	data['is_atten'] = entity.isAtten;
	data['is_season'] = entity.isSeason;
	data['jump_url'] = entity.jumpUrl;
	data['liked'] = entity.liked;
	data['likes'] = entity.likes;
	data['music_id'] = entity.musicId;
	data['short_content'] = entity.shortContent;
	data['state'] = entity.state;
	data['subscribed_count'] = entity.subscribedCount;
	data['tag_id'] = entity.tagId;
	data['tag_name'] = entity.tagName;
	data['tag_type'] = entity.tagType;
	data['type'] = entity.type;
	return data;
}

VideoDetailTagsCount $VideoDetailTagsCountFromJson(Map<String, dynamic> json) {
	final VideoDetailTagsCount videoDetailTagsCount = VideoDetailTagsCount();
	final int? atten = jsonConvert.convert<int>(json['atten']);
	if (atten != null) {
		videoDetailTagsCount.atten = atten;
	}
	final int? use = jsonConvert.convert<int>(json['use']);
	if (use != null) {
		videoDetailTagsCount.use = use;
	}
	final int? view = jsonConvert.convert<int>(json['view']);
	if (view != null) {
		videoDetailTagsCount.view = view;
	}
	return videoDetailTagsCount;
}

Map<String, dynamic> $VideoDetailTagsCountToJson(VideoDetailTagsCount entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['atten'] = entity.atten;
	data['use'] = entity.use;
	data['view'] = entity.view;
	return data;
}

VideoDetailView $VideoDetailViewFromJson(Map<String, dynamic> json) {
	final VideoDetailView videoDetailView = VideoDetailView();
	final int? aid = jsonConvert.convert<int>(json['aid']);
	if (aid != null) {
		videoDetailView.aid = aid;
	}
	final String? bvid = jsonConvert.convert<String>(json['bvid']);
	if (bvid != null) {
		videoDetailView.bvid = bvid;
	}
	final int? cid = jsonConvert.convert<int>(json['cid']);
	if (cid != null) {
		videoDetailView.cid = cid;
	}
	final int? copyright = jsonConvert.convert<int>(json['copyright']);
	if (copyright != null) {
		videoDetailView.copyright = copyright;
	}
	final int? ctime = jsonConvert.convert<int>(json['ctime']);
	if (ctime != null) {
		videoDetailView.ctime = ctime;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		videoDetailView.desc = desc;
	}
	final List<VideoDetailViewDescV2>? descV2 = jsonConvert.convertListNotNull<VideoDetailViewDescV2>(json['desc_v2']);
	if (descV2 != null) {
		videoDetailView.descV2 = descV2;
	}
	final VideoDetailViewDimension? dimension = jsonConvert.convert<VideoDetailViewDimension>(json['dimension']);
	if (dimension != null) {
		videoDetailView.dimension = dimension;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		videoDetailView.duration = duration;
	}
	final String? xDynamic = jsonConvert.convert<String>(json['dynamic']);
	if (xDynamic != null) {
		videoDetailView.xDynamic = xDynamic;
	}
	final VideoDetailViewHonorReply? honorReply = jsonConvert.convert<VideoDetailViewHonorReply>(json['honor_reply']);
	if (honorReply != null) {
		videoDetailView.honorReply = honorReply;
	}
	final bool? isChargeableSeason = jsonConvert.convert<bool>(json['is_chargeable_season']);
	if (isChargeableSeason != null) {
		videoDetailView.isChargeableSeason = isChargeableSeason;
	}
	final bool? isSeasonDisplay = jsonConvert.convert<bool>(json['is_season_display']);
	if (isSeasonDisplay != null) {
		videoDetailView.isSeasonDisplay = isSeasonDisplay;
	}
	final bool? isStory = jsonConvert.convert<bool>(json['is_story']);
	if (isStory != null) {
		videoDetailView.isStory = isStory;
	}
	final VideoDetailViewLabel? label = jsonConvert.convert<VideoDetailViewLabel>(json['label']);
	if (label != null) {
		videoDetailView.label = label;
	}
	final String? likeIcon = jsonConvert.convert<String>(json['like_icon']);
	if (likeIcon != null) {
		videoDetailView.likeIcon = likeIcon;
	}
	final int? missionId = jsonConvert.convert<int>(json['mission_id']);
	if (missionId != null) {
		videoDetailView.missionId = missionId;
	}
	final bool? noCache = jsonConvert.convert<bool>(json['no_cache']);
	if (noCache != null) {
		videoDetailView.noCache = noCache;
	}
	final VideoDetailViewOwner? owner = jsonConvert.convert<VideoDetailViewOwner>(json['owner']);
	if (owner != null) {
		videoDetailView.owner = owner;
	}
	final List<VideoDetailViewPages>? pages = jsonConvert.convertListNotNull<VideoDetailViewPages>(json['pages']);
	if (pages != null) {
		videoDetailView.pages = pages;
	}
	final String? pic = jsonConvert.convert<String>(json['pic']);
	if (pic != null) {
		videoDetailView.pic = pic;
	}
	final int? pubdate = jsonConvert.convert<int>(json['pubdate']);
	if (pubdate != null) {
		videoDetailView.pubdate = pubdate;
	}
	final VideoDetailViewRights? rights = jsonConvert.convert<VideoDetailViewRights>(json['rights']);
	if (rights != null) {
		videoDetailView.rights = rights;
	}
	final VideoDetailViewStat? stat = jsonConvert.convert<VideoDetailViewStat>(json['stat']);
	if (stat != null) {
		videoDetailView.stat = stat;
	}
	final int? state = jsonConvert.convert<int>(json['state']);
	if (state != null) {
		videoDetailView.state = state;
	}
	final VideoDetailViewSubtitle? subtitle = jsonConvert.convert<VideoDetailViewSubtitle>(json['subtitle']);
	if (subtitle != null) {
		videoDetailView.subtitle = subtitle;
	}
	final int? teenageMode = jsonConvert.convert<int>(json['teenage_mode']);
	if (teenageMode != null) {
		videoDetailView.teenageMode = teenageMode;
	}
	final int? tid = jsonConvert.convert<int>(json['tid']);
	if (tid != null) {
		videoDetailView.tid = tid;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		videoDetailView.title = title;
	}
	final String? tname = jsonConvert.convert<String>(json['tname']);
	if (tname != null) {
		videoDetailView.tname = tname;
	}
	final VideoDetailViewUserGarb? userGarb = jsonConvert.convert<VideoDetailViewUserGarb>(json['user_garb']);
	if (userGarb != null) {
		videoDetailView.userGarb = userGarb;
	}
	final int? videos = jsonConvert.convert<int>(json['videos']);
	if (videos != null) {
		videoDetailView.videos = videos;
	}
	return videoDetailView;
}

Map<String, dynamic> $VideoDetailViewToJson(VideoDetailView entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['aid'] = entity.aid;
	data['bvid'] = entity.bvid;
	data['cid'] = entity.cid;
	data['copyright'] = entity.copyright;
	data['ctime'] = entity.ctime;
	data['desc'] = entity.desc;
	data['desc_v2'] =  entity.descV2?.map((v) => v.toJson()).toList();
	data['dimension'] = entity.dimension?.toJson();
	data['duration'] = entity.duration;
	data['dynamic'] = entity.xDynamic;
	data['honor_reply'] = entity.honorReply?.toJson();
	data['is_chargeable_season'] = entity.isChargeableSeason;
	data['is_season_display'] = entity.isSeasonDisplay;
	data['is_story'] = entity.isStory;
	data['label'] = entity.label?.toJson();
	data['like_icon'] = entity.likeIcon;
	data['mission_id'] = entity.missionId;
	data['no_cache'] = entity.noCache;
	data['owner'] = entity.owner?.toJson();
	data['pages'] =  entity.pages?.map((v) => v.toJson()).toList();
	data['pic'] = entity.pic;
	data['pubdate'] = entity.pubdate;
	data['rights'] = entity.rights?.toJson();
	data['stat'] = entity.stat?.toJson();
	data['state'] = entity.state;
	data['subtitle'] = entity.subtitle?.toJson();
	data['teenage_mode'] = entity.teenageMode;
	data['tid'] = entity.tid;
	data['title'] = entity.title;
	data['tname'] = entity.tname;
	data['user_garb'] = entity.userGarb?.toJson();
	data['videos'] = entity.videos;
	return data;
}

VideoDetailViewDescV2 $VideoDetailViewDescV2FromJson(Map<String, dynamic> json) {
	final VideoDetailViewDescV2 videoDetailViewDescV2 = VideoDetailViewDescV2();
	final int? bizId = jsonConvert.convert<int>(json['biz_id']);
	if (bizId != null) {
		videoDetailViewDescV2.bizId = bizId;
	}
	final String? rawText = jsonConvert.convert<String>(json['raw_text']);
	if (rawText != null) {
		videoDetailViewDescV2.rawText = rawText;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoDetailViewDescV2.type = type;
	}
	return videoDetailViewDescV2;
}

Map<String, dynamic> $VideoDetailViewDescV2ToJson(VideoDetailViewDescV2 entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['biz_id'] = entity.bizId;
	data['raw_text'] = entity.rawText;
	data['type'] = entity.type;
	return data;
}

VideoDetailViewDimension $VideoDetailViewDimensionFromJson(Map<String, dynamic> json) {
	final VideoDetailViewDimension videoDetailViewDimension = VideoDetailViewDimension();
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		videoDetailViewDimension.height = height;
	}
	final int? rotate = jsonConvert.convert<int>(json['rotate']);
	if (rotate != null) {
		videoDetailViewDimension.rotate = rotate;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		videoDetailViewDimension.width = width;
	}
	return videoDetailViewDimension;
}

Map<String, dynamic> $VideoDetailViewDimensionToJson(VideoDetailViewDimension entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['height'] = entity.height;
	data['rotate'] = entity.rotate;
	data['width'] = entity.width;
	return data;
}

VideoDetailViewHonorReply $VideoDetailViewHonorReplyFromJson(Map<String, dynamic> json) {
	final VideoDetailViewHonorReply videoDetailViewHonorReply = VideoDetailViewHonorReply();
	final List<VideoDetailViewHonorReplyHonor>? honor = jsonConvert.convertListNotNull<VideoDetailViewHonorReplyHonor>(json['honor']);
	if (honor != null) {
		videoDetailViewHonorReply.honor = honor;
	}
	return videoDetailViewHonorReply;
}

Map<String, dynamic> $VideoDetailViewHonorReplyToJson(VideoDetailViewHonorReply entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['honor'] =  entity.honor?.map((v) => v.toJson()).toList();
	return data;
}

VideoDetailViewHonorReplyHonor $VideoDetailViewHonorReplyHonorFromJson(Map<String, dynamic> json) {
	final VideoDetailViewHonorReplyHonor videoDetailViewHonorReplyHonor = VideoDetailViewHonorReplyHonor();
	final int? aid = jsonConvert.convert<int>(json['aid']);
	if (aid != null) {
		videoDetailViewHonorReplyHonor.aid = aid;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		videoDetailViewHonorReplyHonor.desc = desc;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoDetailViewHonorReplyHonor.type = type;
	}
	final int? weeklyRecommendNum = jsonConvert.convert<int>(json['weekly_recommend_num']);
	if (weeklyRecommendNum != null) {
		videoDetailViewHonorReplyHonor.weeklyRecommendNum = weeklyRecommendNum;
	}
	return videoDetailViewHonorReplyHonor;
}

Map<String, dynamic> $VideoDetailViewHonorReplyHonorToJson(VideoDetailViewHonorReplyHonor entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['aid'] = entity.aid;
	data['desc'] = entity.desc;
	data['type'] = entity.type;
	data['weekly_recommend_num'] = entity.weeklyRecommendNum;
	return data;
}

VideoDetailViewLabel $VideoDetailViewLabelFromJson(Map<String, dynamic> json) {
	final VideoDetailViewLabel videoDetailViewLabel = VideoDetailViewLabel();
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoDetailViewLabel.type = type;
	}
	return videoDetailViewLabel;
}

Map<String, dynamic> $VideoDetailViewLabelToJson(VideoDetailViewLabel entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	return data;
}

VideoDetailViewOwner $VideoDetailViewOwnerFromJson(Map<String, dynamic> json) {
	final VideoDetailViewOwner videoDetailViewOwner = VideoDetailViewOwner();
	final String? face = jsonConvert.convert<String>(json['face']);
	if (face != null) {
		videoDetailViewOwner.face = face;
	}
	final int? mid = jsonConvert.convert<int>(json['mid']);
	if (mid != null) {
		videoDetailViewOwner.mid = mid;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoDetailViewOwner.name = name;
	}
	return videoDetailViewOwner;
}

Map<String, dynamic> $VideoDetailViewOwnerToJson(VideoDetailViewOwner entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['face'] = entity.face;
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	return data;
}

VideoDetailViewPages $VideoDetailViewPagesFromJson(Map<String, dynamic> json) {
	final VideoDetailViewPages videoDetailViewPages = VideoDetailViewPages();
	final int? cid = jsonConvert.convert<int>(json['cid']);
	if (cid != null) {
		videoDetailViewPages.cid = cid;
	}
	final VideoDetailViewPagesDimension? dimension = jsonConvert.convert<VideoDetailViewPagesDimension>(json['dimension']);
	if (dimension != null) {
		videoDetailViewPages.dimension = dimension;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		videoDetailViewPages.duration = duration;
	}
	final String? firstFrame = jsonConvert.convert<String>(json['first_frame']);
	if (firstFrame != null) {
		videoDetailViewPages.firstFrame = firstFrame;
	}
	final String? from = jsonConvert.convert<String>(json['from']);
	if (from != null) {
		videoDetailViewPages.from = from;
	}
	final int? page = jsonConvert.convert<int>(json['page']);
	if (page != null) {
		videoDetailViewPages.page = page;
	}
	final String? xPart = jsonConvert.convert<String>(json['part']);
	if (xPart != null) {
		videoDetailViewPages.xPart = xPart;
	}
	final String? vid = jsonConvert.convert<String>(json['vid']);
	if (vid != null) {
		videoDetailViewPages.vid = vid;
	}
	final String? weblink = jsonConvert.convert<String>(json['weblink']);
	if (weblink != null) {
		videoDetailViewPages.weblink = weblink;
	}
	return videoDetailViewPages;
}

Map<String, dynamic> $VideoDetailViewPagesToJson(VideoDetailViewPages entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['cid'] = entity.cid;
	data['dimension'] = entity.dimension?.toJson();
	data['duration'] = entity.duration;
	data['first_frame'] = entity.firstFrame;
	data['from'] = entity.from;
	data['page'] = entity.page;
	data['part'] = entity.xPart;
	data['vid'] = entity.vid;
	data['weblink'] = entity.weblink;
	return data;
}

VideoDetailViewPagesDimension $VideoDetailViewPagesDimensionFromJson(Map<String, dynamic> json) {
	final VideoDetailViewPagesDimension videoDetailViewPagesDimension = VideoDetailViewPagesDimension();
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		videoDetailViewPagesDimension.height = height;
	}
	final int? rotate = jsonConvert.convert<int>(json['rotate']);
	if (rotate != null) {
		videoDetailViewPagesDimension.rotate = rotate;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		videoDetailViewPagesDimension.width = width;
	}
	return videoDetailViewPagesDimension;
}

Map<String, dynamic> $VideoDetailViewPagesDimensionToJson(VideoDetailViewPagesDimension entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['height'] = entity.height;
	data['rotate'] = entity.rotate;
	data['width'] = entity.width;
	return data;
}

VideoDetailViewRights $VideoDetailViewRightsFromJson(Map<String, dynamic> json) {
	final VideoDetailViewRights videoDetailViewRights = VideoDetailViewRights();
	final int? arcPay = jsonConvert.convert<int>(json['arc_pay']);
	if (arcPay != null) {
		videoDetailViewRights.arcPay = arcPay;
	}
	final int? autoplay = jsonConvert.convert<int>(json['autoplay']);
	if (autoplay != null) {
		videoDetailViewRights.autoplay = autoplay;
	}
	final int? bp = jsonConvert.convert<int>(json['bp']);
	if (bp != null) {
		videoDetailViewRights.bp = bp;
	}
	final int? cleanMode = jsonConvert.convert<int>(json['clean_mode']);
	if (cleanMode != null) {
		videoDetailViewRights.cleanMode = cleanMode;
	}
	final int? download = jsonConvert.convert<int>(json['download']);
	if (download != null) {
		videoDetailViewRights.download = download;
	}
	final int? elec = jsonConvert.convert<int>(json['elec']);
	if (elec != null) {
		videoDetailViewRights.elec = elec;
	}
	final int? freeWatch = jsonConvert.convert<int>(json['free_watch']);
	if (freeWatch != null) {
		videoDetailViewRights.freeWatch = freeWatch;
	}
	final int? hd5 = jsonConvert.convert<int>(json['hd5']);
	if (hd5 != null) {
		videoDetailViewRights.hd5 = hd5;
	}
	final int? is360 = jsonConvert.convert<int>(json['is_360']);
	if (is360 != null) {
		videoDetailViewRights.is360 = is360;
	}
	final int? isCooperation = jsonConvert.convert<int>(json['is_cooperation']);
	if (isCooperation != null) {
		videoDetailViewRights.isCooperation = isCooperation;
	}
	final int? isSteinGate = jsonConvert.convert<int>(json['is_stein_gate']);
	if (isSteinGate != null) {
		videoDetailViewRights.isSteinGate = isSteinGate;
	}
	final int? movie = jsonConvert.convert<int>(json['movie']);
	if (movie != null) {
		videoDetailViewRights.movie = movie;
	}
	final int? noBackground = jsonConvert.convert<int>(json['no_background']);
	if (noBackground != null) {
		videoDetailViewRights.noBackground = noBackground;
	}
	final int? noReprint = jsonConvert.convert<int>(json['no_reprint']);
	if (noReprint != null) {
		videoDetailViewRights.noReprint = noReprint;
	}
	final int? noShare = jsonConvert.convert<int>(json['no_share']);
	if (noShare != null) {
		videoDetailViewRights.noShare = noShare;
	}
	final int? pay = jsonConvert.convert<int>(json['pay']);
	if (pay != null) {
		videoDetailViewRights.pay = pay;
	}
	final int? ugcPay = jsonConvert.convert<int>(json['ugc_pay']);
	if (ugcPay != null) {
		videoDetailViewRights.ugcPay = ugcPay;
	}
	final int? ugcPayPreview = jsonConvert.convert<int>(json['ugc_pay_preview']);
	if (ugcPayPreview != null) {
		videoDetailViewRights.ugcPayPreview = ugcPayPreview;
	}
	return videoDetailViewRights;
}

Map<String, dynamic> $VideoDetailViewRightsToJson(VideoDetailViewRights entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['arc_pay'] = entity.arcPay;
	data['autoplay'] = entity.autoplay;
	data['bp'] = entity.bp;
	data['clean_mode'] = entity.cleanMode;
	data['download'] = entity.download;
	data['elec'] = entity.elec;
	data['free_watch'] = entity.freeWatch;
	data['hd5'] = entity.hd5;
	data['is_360'] = entity.is360;
	data['is_cooperation'] = entity.isCooperation;
	data['is_stein_gate'] = entity.isSteinGate;
	data['movie'] = entity.movie;
	data['no_background'] = entity.noBackground;
	data['no_reprint'] = entity.noReprint;
	data['no_share'] = entity.noShare;
	data['pay'] = entity.pay;
	data['ugc_pay'] = entity.ugcPay;
	data['ugc_pay_preview'] = entity.ugcPayPreview;
	return data;
}

VideoDetailViewStat $VideoDetailViewStatFromJson(Map<String, dynamic> json) {
	final VideoDetailViewStat videoDetailViewStat = VideoDetailViewStat();
	final int? aid = jsonConvert.convert<int>(json['aid']);
	if (aid != null) {
		videoDetailViewStat.aid = aid;
	}
	final String? argueMsg = jsonConvert.convert<String>(json['argue_msg']);
	if (argueMsg != null) {
		videoDetailViewStat.argueMsg = argueMsg;
	}
	final int? coin = jsonConvert.convert<int>(json['coin']);
	if (coin != null) {
		videoDetailViewStat.coin = coin;
	}
	final int? danmaku = jsonConvert.convert<int>(json['danmaku']);
	if (danmaku != null) {
		videoDetailViewStat.danmaku = danmaku;
	}
	final int? dislike = jsonConvert.convert<int>(json['dislike']);
	if (dislike != null) {
		videoDetailViewStat.dislike = dislike;
	}
	final String? evaluation = jsonConvert.convert<String>(json['evaluation']);
	if (evaluation != null) {
		videoDetailViewStat.evaluation = evaluation;
	}
	final int? favorite = jsonConvert.convert<int>(json['favorite']);
	if (favorite != null) {
		videoDetailViewStat.favorite = favorite;
	}
	final int? hisRank = jsonConvert.convert<int>(json['his_rank']);
	if (hisRank != null) {
		videoDetailViewStat.hisRank = hisRank;
	}
	final int? like = jsonConvert.convert<int>(json['like']);
	if (like != null) {
		videoDetailViewStat.like = like;
	}
	final int? nowRank = jsonConvert.convert<int>(json['now_rank']);
	if (nowRank != null) {
		videoDetailViewStat.nowRank = nowRank;
	}
	final int? reply = jsonConvert.convert<int>(json['reply']);
	if (reply != null) {
		videoDetailViewStat.reply = reply;
	}
	final int? share = jsonConvert.convert<int>(json['share']);
	if (share != null) {
		videoDetailViewStat.share = share;
	}
	final int? view = jsonConvert.convert<int>(json['view']);
	if (view != null) {
		videoDetailViewStat.view = view;
	}
	return videoDetailViewStat;
}

Map<String, dynamic> $VideoDetailViewStatToJson(VideoDetailViewStat entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['aid'] = entity.aid;
	data['argue_msg'] = entity.argueMsg;
	data['coin'] = entity.coin;
	data['danmaku'] = entity.danmaku;
	data['dislike'] = entity.dislike;
	data['evaluation'] = entity.evaluation;
	data['favorite'] = entity.favorite;
	data['his_rank'] = entity.hisRank;
	data['like'] = entity.like;
	data['now_rank'] = entity.nowRank;
	data['reply'] = entity.reply;
	data['share'] = entity.share;
	data['view'] = entity.view;
	return data;
}

VideoDetailViewSubtitle $VideoDetailViewSubtitleFromJson(Map<String, dynamic> json) {
	final VideoDetailViewSubtitle videoDetailViewSubtitle = VideoDetailViewSubtitle();
	final bool? allowSubmit = jsonConvert.convert<bool>(json['allow_submit']);
	if (allowSubmit != null) {
		videoDetailViewSubtitle.allowSubmit = allowSubmit;
	}
	final List<VideoDetailViewSubtitleList>? list = jsonConvert.convertListNotNull<VideoDetailViewSubtitleList>(json['list']);
	if (list != null) {
		videoDetailViewSubtitle.list = list;
	}
	return videoDetailViewSubtitle;
}

Map<String, dynamic> $VideoDetailViewSubtitleToJson(VideoDetailViewSubtitle entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['allow_submit'] = entity.allowSubmit;
	data['list'] =  entity.list?.map((v) => v.toJson()).toList();
	return data;
}

VideoDetailViewSubtitleList $VideoDetailViewSubtitleListFromJson(Map<String, dynamic> json) {
	final VideoDetailViewSubtitleList videoDetailViewSubtitleList = VideoDetailViewSubtitleList();
	final int? aiStatus = jsonConvert.convert<int>(json['ai_status']);
	if (aiStatus != null) {
		videoDetailViewSubtitleList.aiStatus = aiStatus;
	}
	final int? aiType = jsonConvert.convert<int>(json['ai_type']);
	if (aiType != null) {
		videoDetailViewSubtitleList.aiType = aiType;
	}
	final VideoDetailViewSubtitleListAuthor? author = jsonConvert.convert<VideoDetailViewSubtitleListAuthor>(json['author']);
	if (author != null) {
		videoDetailViewSubtitleList.author = author;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		videoDetailViewSubtitleList.id = id;
	}
	final String? idStr = jsonConvert.convert<String>(json['id_str']);
	if (idStr != null) {
		videoDetailViewSubtitleList.idStr = idStr;
	}
	final bool? isLock = jsonConvert.convert<bool>(json['is_lock']);
	if (isLock != null) {
		videoDetailViewSubtitleList.isLock = isLock;
	}
	final String? lan = jsonConvert.convert<String>(json['lan']);
	if (lan != null) {
		videoDetailViewSubtitleList.lan = lan;
	}
	final String? lanDoc = jsonConvert.convert<String>(json['lan_doc']);
	if (lanDoc != null) {
		videoDetailViewSubtitleList.lanDoc = lanDoc;
	}
	final String? subtitleUrl = jsonConvert.convert<String>(json['subtitle_url']);
	if (subtitleUrl != null) {
		videoDetailViewSubtitleList.subtitleUrl = subtitleUrl;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoDetailViewSubtitleList.type = type;
	}
	return videoDetailViewSubtitleList;
}

Map<String, dynamic> $VideoDetailViewSubtitleListToJson(VideoDetailViewSubtitleList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ai_status'] = entity.aiStatus;
	data['ai_type'] = entity.aiType;
	data['author'] = entity.author?.toJson();
	data['id'] = entity.id;
	data['id_str'] = entity.idStr;
	data['is_lock'] = entity.isLock;
	data['lan'] = entity.lan;
	data['lan_doc'] = entity.lanDoc;
	data['subtitle_url'] = entity.subtitleUrl;
	data['type'] = entity.type;
	return data;
}

VideoDetailViewSubtitleListAuthor $VideoDetailViewSubtitleListAuthorFromJson(Map<String, dynamic> json) {
	final VideoDetailViewSubtitleListAuthor videoDetailViewSubtitleListAuthor = VideoDetailViewSubtitleListAuthor();
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		videoDetailViewSubtitleListAuthor.birthday = birthday;
	}
	final String? face = jsonConvert.convert<String>(json['face']);
	if (face != null) {
		videoDetailViewSubtitleListAuthor.face = face;
	}
	final int? inRegAudit = jsonConvert.convert<int>(json['in_reg_audit']);
	if (inRegAudit != null) {
		videoDetailViewSubtitleListAuthor.inRegAudit = inRegAudit;
	}
	final int? isDeleted = jsonConvert.convert<int>(json['is_deleted']);
	if (isDeleted != null) {
		videoDetailViewSubtitleListAuthor.isDeleted = isDeleted;
	}
	final int? isFakeAccount = jsonConvert.convert<int>(json['is_fake_account']);
	if (isFakeAccount != null) {
		videoDetailViewSubtitleListAuthor.isFakeAccount = isFakeAccount;
	}
	final int? isSeniorMember = jsonConvert.convert<int>(json['is_senior_member']);
	if (isSeniorMember != null) {
		videoDetailViewSubtitleListAuthor.isSeniorMember = isSeniorMember;
	}
	final int? mid = jsonConvert.convert<int>(json['mid']);
	if (mid != null) {
		videoDetailViewSubtitleListAuthor.mid = mid;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoDetailViewSubtitleListAuthor.name = name;
	}
	final int? rank = jsonConvert.convert<int>(json['rank']);
	if (rank != null) {
		videoDetailViewSubtitleListAuthor.rank = rank;
	}
	final String? sex = jsonConvert.convert<String>(json['sex']);
	if (sex != null) {
		videoDetailViewSubtitleListAuthor.sex = sex;
	}
	final String? sign = jsonConvert.convert<String>(json['sign']);
	if (sign != null) {
		videoDetailViewSubtitleListAuthor.sign = sign;
	}
	return videoDetailViewSubtitleListAuthor;
}

Map<String, dynamic> $VideoDetailViewSubtitleListAuthorToJson(VideoDetailViewSubtitleListAuthor entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['birthday'] = entity.birthday;
	data['face'] = entity.face;
	data['in_reg_audit'] = entity.inRegAudit;
	data['is_deleted'] = entity.isDeleted;
	data['is_fake_account'] = entity.isFakeAccount;
	data['is_senior_member'] = entity.isSeniorMember;
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	data['rank'] = entity.rank;
	data['sex'] = entity.sex;
	data['sign'] = entity.sign;
	return data;
}

VideoDetailViewUserGarb $VideoDetailViewUserGarbFromJson(Map<String, dynamic> json) {
	final VideoDetailViewUserGarb videoDetailViewUserGarb = VideoDetailViewUserGarb();
	final String? urlImageAniCut = jsonConvert.convert<String>(json['url_image_ani_cut']);
	if (urlImageAniCut != null) {
		videoDetailViewUserGarb.urlImageAniCut = urlImageAniCut;
	}
	return videoDetailViewUserGarb;
}

Map<String, dynamic> $VideoDetailViewUserGarbToJson(VideoDetailViewUserGarb entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['url_image_ani_cut'] = entity.urlImageAniCut;
	return data;
}

VideoDetailHotShare $VideoDetailHotShareFromJson(Map<String, dynamic> json) {
	final VideoDetailHotShare videoDetailHotShare = VideoDetailHotShare();
	final List<dynamic>? list = jsonConvert.convertListNotNull<dynamic>(json['list']);
	if (list != null) {
		videoDetailHotShare.list = list;
	}
	final bool? xShow = jsonConvert.convert<bool>(json['show']);
	if (xShow != null) {
		videoDetailHotShare.xShow = xShow;
	}
	return videoDetailHotShare;
}

Map<String, dynamic> $VideoDetailHotShareToJson(VideoDetailHotShare entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['list'] =  entity.list;
	data['show'] = entity.xShow;
	return data;
}

VideoDetailViewAddit $VideoDetailViewAdditFromJson(Map<String, dynamic> json) {
	final VideoDetailViewAddit videoDetailViewAddit = VideoDetailViewAddit();
	final bool? x63 = jsonConvert.convert<bool>(json['63']);
	if (x63 != null) {
		videoDetailViewAddit.x63 = x63;
	}
	final bool? x64 = jsonConvert.convert<bool>(json['64']);
	if (x64 != null) {
		videoDetailViewAddit.x64 = x64;
	}
	return videoDetailViewAddit;
}

Map<String, dynamic> $VideoDetailViewAdditToJson(VideoDetailViewAddit entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['63'] = entity.x63;
	data['64'] = entity.x64;
	return data;
}