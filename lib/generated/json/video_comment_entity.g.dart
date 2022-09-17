import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/video_comment_entity.dart';
import '../../model/member_entity.dart';


VideoCommentEntity $VideoCommentEntityFromJson(Map<String, dynamic> json) {
	final VideoCommentEntity videoCommentEntity = VideoCommentEntity();
	final int? action = jsonConvert.convert<int>(json['action']);
	if (action != null) {
		videoCommentEntity.action = action;
	}
	final int? assist = jsonConvert.convert<int>(json['assist']);
	if (assist != null) {
		videoCommentEntity.assist = assist;
	}
	final int? attr = jsonConvert.convert<int>(json['attr']);
	if (attr != null) {
		videoCommentEntity.attr = attr;
	}
	final VideoCommentContent? content = jsonConvert.convert<VideoCommentContent>(json['content']);
	if (content != null) {
		videoCommentEntity.content = content;
	}
	final int? count = jsonConvert.convert<int>(json['count']);
	if (count != null) {
		videoCommentEntity.count = count;
	}
	final int? ctime = jsonConvert.convert<int>(json['ctime']);
	if (ctime != null) {
		videoCommentEntity.ctime = ctime;
	}
	final int? dialog = jsonConvert.convert<int>(json['dialog']);
	if (dialog != null) {
		videoCommentEntity.dialog = dialog;
	}
	final int? fansgrade = jsonConvert.convert<int>(json['fansgrade']);
	if (fansgrade != null) {
		videoCommentEntity.fansgrade = fansgrade;
	}
	final VideoCommentFolder? folder = jsonConvert.convert<VideoCommentFolder>(json['folder']);
	if (folder != null) {
		videoCommentEntity.folder = folder;
	}
	final bool? invisible = jsonConvert.convert<bool>(json['invisible']);
	if (invisible != null) {
		videoCommentEntity.invisible = invisible;
	}
	final int? like = jsonConvert.convert<int>(json['like']);
	if (like != null) {
		videoCommentEntity.like = like;
	}
	final VideoCommentMember? member = jsonConvert.convert<VideoCommentMember>(json['member']);
	if (member != null) {
		videoCommentEntity.member = member;
	}
	final int? mid = jsonConvert.convert<int>(json['mid']);
	if (mid != null) {
		videoCommentEntity.mid = mid;
	}
	final int? oid = jsonConvert.convert<int>(json['oid']);
	if (oid != null) {
		videoCommentEntity.oid = oid;
	}
	final int? parent = jsonConvert.convert<int>(json['parent']);
	if (parent != null) {
		videoCommentEntity.parent = parent;
	}
	final String? parentStr = jsonConvert.convert<String>(json['parent_str']);
	if (parentStr != null) {
		videoCommentEntity.parentStr = parentStr;
	}
	final int? rcount = jsonConvert.convert<int>(json['rcount']);
	if (rcount != null) {
		videoCommentEntity.rcount = rcount;
	}
	final VideoCommentReplyControl? replyControl = jsonConvert.convert<VideoCommentReplyControl>(json['reply_control']);
	if (replyControl != null) {
		videoCommentEntity.replyControl = replyControl;
	}
	final int? root = jsonConvert.convert<int>(json['root']);
	if (root != null) {
		videoCommentEntity.root = root;
	}
	final String? rootStr = jsonConvert.convert<String>(json['root_str']);
	if (rootStr != null) {
		videoCommentEntity.rootStr = rootStr;
	}
	final int? rpid = jsonConvert.convert<int>(json['rpid']);
	if (rpid != null) {
		videoCommentEntity.rpid = rpid;
	}
	final String? rpidStr = jsonConvert.convert<String>(json['rpid_str']);
	if (rpidStr != null) {
		videoCommentEntity.rpidStr = rpidStr;
	}
	final bool? showFollow = jsonConvert.convert<bool>(json['show_follow']);
	if (showFollow != null) {
		videoCommentEntity.showFollow = showFollow;
	}
	final int? state = jsonConvert.convert<int>(json['state']);
	if (state != null) {
		videoCommentEntity.state = state;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoCommentEntity.type = type;
	}
	final VideoCommentUpAction? upAction = jsonConvert.convert<VideoCommentUpAction>(json['up_action']);
	if (upAction != null) {
		videoCommentEntity.upAction = upAction;
	}
	final List<VideoCommentEntity>? replies = jsonConvert.convertListNotNull<VideoCommentEntity>(json['replies']);
	if (replies != null) {
		videoCommentEntity.replies = replies;
	}
	return videoCommentEntity;
}

Map<String, dynamic> $VideoCommentEntityToJson(VideoCommentEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['action'] = entity.action;
	data['assist'] = entity.assist;
	data['attr'] = entity.attr;
	data['content'] = entity.content?.toJson();
	data['count'] = entity.count;
	data['ctime'] = entity.ctime;
	data['dialog'] = entity.dialog;
	data['fansgrade'] = entity.fansgrade;
	data['folder'] = entity.folder?.toJson();
	data['invisible'] = entity.invisible;
	data['like'] = entity.like;
	data['member'] = entity.member?.toJson();
	data['mid'] = entity.mid;
	data['oid'] = entity.oid;
	data['parent'] = entity.parent;
	data['parent_str'] = entity.parentStr;
	data['rcount'] = entity.rcount;
	data['reply_control'] = entity.replyControl?.toJson();
	data['root'] = entity.root;
	data['root_str'] = entity.rootStr;
	data['rpid'] = entity.rpid;
	data['rpid_str'] = entity.rpidStr;
	data['show_follow'] = entity.showFollow;
	data['state'] = entity.state;
	data['type'] = entity.type;
	data['up_action'] = entity.upAction?.toJson();
	data['replies'] =  entity.replies?.map((v) => v.toJson()).toList();
	return data;
}

VideoCommentContent $VideoCommentContentFromJson(Map<String, dynamic> json) {
	final VideoCommentContent videoCommentContent = VideoCommentContent();
	final String? device = jsonConvert.convert<String>(json['device']);
	if (device != null) {
		videoCommentContent.device = device;
	}
	final VideoCommentContentJumpUrl? jumpUrl = jsonConvert.convert<VideoCommentContentJumpUrl>(json['jump_url']);
	if (jumpUrl != null) {
		videoCommentContent.jumpUrl = jumpUrl;
	}
	final int? maxLine = jsonConvert.convert<int>(json['max_line']);
	if (maxLine != null) {
		videoCommentContent.maxLine = maxLine;
	}
	final List<MemberEntity>? members = jsonConvert.convertListNotNull<MemberEntity>(json['members']);
	if (members != null) {
		videoCommentContent.members = members;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		videoCommentContent.message = message;
	}
	final int? plat = jsonConvert.convert<int>(json['plat']);
	if (plat != null) {
		videoCommentContent.plat = plat;
	}
	return videoCommentContent;
}

Map<String, dynamic> $VideoCommentContentToJson(VideoCommentContent entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['device'] = entity.device;
	data['jump_url'] = entity.jumpUrl?.toJson();
	data['max_line'] = entity.maxLine;
	data['members'] =  entity.members?.map((v) => v.toJson()).toList();
	data['message'] = entity.message;
	data['plat'] = entity.plat;
	return data;
}

VideoCommentContentJumpUrl $VideoCommentContentJumpUrlFromJson(Map<String, dynamic> json) {
	final VideoCommentContentJumpUrl videoCommentContentJumpUrl = VideoCommentContentJumpUrl();
	return videoCommentContentJumpUrl;
}

Map<String, dynamic> $VideoCommentContentJumpUrlToJson(VideoCommentContentJumpUrl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

VideoCommentFolder $VideoCommentFolderFromJson(Map<String, dynamic> json) {
	final VideoCommentFolder videoCommentFolder = VideoCommentFolder();
	final bool? hasFolded = jsonConvert.convert<bool>(json['has_folded']);
	if (hasFolded != null) {
		videoCommentFolder.hasFolded = hasFolded;
	}
	final bool? isFolded = jsonConvert.convert<bool>(json['is_folded']);
	if (isFolded != null) {
		videoCommentFolder.isFolded = isFolded;
	}
	final String? rule = jsonConvert.convert<String>(json['rule']);
	if (rule != null) {
		videoCommentFolder.rule = rule;
	}
	return videoCommentFolder;
}

Map<String, dynamic> $VideoCommentFolderToJson(VideoCommentFolder entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['has_folded'] = entity.hasFolded;
	data['is_folded'] = entity.isFolded;
	data['rule'] = entity.rule;
	return data;
}

VideoCommentMember $VideoCommentMemberFromJson(Map<String, dynamic> json) {
	final VideoCommentMember videoCommentMember = VideoCommentMember();
	final String? avatar = jsonConvert.convert<String>(json['avatar']);
	if (avatar != null) {
		videoCommentMember.avatar = avatar;
	}
	final String? contractDesc = jsonConvert.convert<String>(json['contract_desc']);
	if (contractDesc != null) {
		videoCommentMember.contractDesc = contractDesc;
	}
	final int? faceNftNew = jsonConvert.convert<int>(json['face_nft_new']);
	if (faceNftNew != null) {
		videoCommentMember.faceNftNew = faceNftNew;
	}
	final bool? isContractor = jsonConvert.convert<bool>(json['is_contractor']);
	if (isContractor != null) {
		videoCommentMember.isContractor = isContractor;
	}
	final int? isSeniorMember = jsonConvert.convert<int>(json['is_senior_member']);
	if (isSeniorMember != null) {
		videoCommentMember.isSeniorMember = isSeniorMember;
	}
	final VideoCommentMemberLevelInfo? levelInfo = jsonConvert.convert<VideoCommentMemberLevelInfo>(json['level_info']);
	if (levelInfo != null) {
		videoCommentMember.levelInfo = levelInfo;
	}
	final String? mid = jsonConvert.convert<String>(json['mid']);
	if (mid != null) {
		videoCommentMember.mid = mid;
	}
	final VideoCommentMemberNameplate? nameplate = jsonConvert.convert<VideoCommentMemberNameplate>(json['nameplate']);
	if (nameplate != null) {
		videoCommentMember.nameplate = nameplate;
	}
	final VideoCommentMemberOfficialVerify? officialVerify = jsonConvert.convert<VideoCommentMemberOfficialVerify>(json['official_verify']);
	if (officialVerify != null) {
		videoCommentMember.officialVerify = officialVerify;
	}
	final VideoCommentMemberPendant? pendant = jsonConvert.convert<VideoCommentMemberPendant>(json['pendant']);
	if (pendant != null) {
		videoCommentMember.pendant = pendant;
	}
	final String? rank = jsonConvert.convert<String>(json['rank']);
	if (rank != null) {
		videoCommentMember.rank = rank;
	}
	final String? sex = jsonConvert.convert<String>(json['sex']);
	if (sex != null) {
		videoCommentMember.sex = sex;
	}
	final String? sign = jsonConvert.convert<String>(json['sign']);
	if (sign != null) {
		videoCommentMember.sign = sign;
	}
	final String? uname = jsonConvert.convert<String>(json['uname']);
	if (uname != null) {
		videoCommentMember.uname = uname;
	}
	final VideoCommentMemberUserSailing? userSailing = jsonConvert.convert<VideoCommentMemberUserSailing>(json['user_sailing']);
	if (userSailing != null) {
		videoCommentMember.userSailing = userSailing;
	}
	final VideoCommentMemberVip? vip = jsonConvert.convert<VideoCommentMemberVip>(json['vip']);
	if (vip != null) {
		videoCommentMember.vip = vip;
	}
	return videoCommentMember;
}

Map<String, dynamic> $VideoCommentMemberToJson(VideoCommentMember entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['avatar'] = entity.avatar;
	data['contract_desc'] = entity.contractDesc;
	data['face_nft_new'] = entity.faceNftNew;
	data['is_contractor'] = entity.isContractor;
	data['is_senior_member'] = entity.isSeniorMember;
	data['level_info'] = entity.levelInfo?.toJson();
	data['mid'] = entity.mid;
	data['nameplate'] = entity.nameplate?.toJson();
	data['official_verify'] = entity.officialVerify?.toJson();
	data['pendant'] = entity.pendant?.toJson();
	data['rank'] = entity.rank;
	data['sex'] = entity.sex;
	data['sign'] = entity.sign;
	data['uname'] = entity.uname;
	data['user_sailing'] = entity.userSailing?.toJson();
	data['vip'] = entity.vip?.toJson();
	return data;
}

VideoCommentMemberLevelInfo $VideoCommentMemberLevelInfoFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberLevelInfo videoCommentMemberLevelInfo = VideoCommentMemberLevelInfo();
	final int? currentExp = jsonConvert.convert<int>(json['current_exp']);
	if (currentExp != null) {
		videoCommentMemberLevelInfo.currentExp = currentExp;
	}
	final int? currentLevel = jsonConvert.convert<int>(json['current_level']);
	if (currentLevel != null) {
		videoCommentMemberLevelInfo.currentLevel = currentLevel;
	}
	final int? currentMin = jsonConvert.convert<int>(json['current_min']);
	if (currentMin != null) {
		videoCommentMemberLevelInfo.currentMin = currentMin;
	}
	final int? nextExp = jsonConvert.convert<int>(json['next_exp']);
	if (nextExp != null) {
		videoCommentMemberLevelInfo.nextExp = nextExp;
	}
	return videoCommentMemberLevelInfo;
}

Map<String, dynamic> $VideoCommentMemberLevelInfoToJson(VideoCommentMemberLevelInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['current_exp'] = entity.currentExp;
	data['current_level'] = entity.currentLevel;
	data['current_min'] = entity.currentMin;
	data['next_exp'] = entity.nextExp;
	return data;
}

VideoCommentMemberNameplate $VideoCommentMemberNameplateFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberNameplate videoCommentMemberNameplate = VideoCommentMemberNameplate();
	final String? condition = jsonConvert.convert<String>(json['condition']);
	if (condition != null) {
		videoCommentMemberNameplate.condition = condition;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		videoCommentMemberNameplate.image = image;
	}
	final String? imageSmall = jsonConvert.convert<String>(json['image_small']);
	if (imageSmall != null) {
		videoCommentMemberNameplate.imageSmall = imageSmall;
	}
	final String? level = jsonConvert.convert<String>(json['level']);
	if (level != null) {
		videoCommentMemberNameplate.level = level;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoCommentMemberNameplate.name = name;
	}
	final int? nid = jsonConvert.convert<int>(json['nid']);
	if (nid != null) {
		videoCommentMemberNameplate.nid = nid;
	}
	return videoCommentMemberNameplate;
}

Map<String, dynamic> $VideoCommentMemberNameplateToJson(VideoCommentMemberNameplate entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['condition'] = entity.condition;
	data['image'] = entity.image;
	data['image_small'] = entity.imageSmall;
	data['level'] = entity.level;
	data['name'] = entity.name;
	data['nid'] = entity.nid;
	return data;
}

VideoCommentMemberOfficialVerify $VideoCommentMemberOfficialVerifyFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberOfficialVerify videoCommentMemberOfficialVerify = VideoCommentMemberOfficialVerify();
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		videoCommentMemberOfficialVerify.desc = desc;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		videoCommentMemberOfficialVerify.type = type;
	}
	return videoCommentMemberOfficialVerify;
}

Map<String, dynamic> $VideoCommentMemberOfficialVerifyToJson(VideoCommentMemberOfficialVerify entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['desc'] = entity.desc;
	data['type'] = entity.type;
	return data;
}

VideoCommentMemberPendant $VideoCommentMemberPendantFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberPendant videoCommentMemberPendant = VideoCommentMemberPendant();
	final int? expire = jsonConvert.convert<int>(json['expire']);
	if (expire != null) {
		videoCommentMemberPendant.expire = expire;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		videoCommentMemberPendant.image = image;
	}
	final String? imageEnhance = jsonConvert.convert<String>(json['image_enhance']);
	if (imageEnhance != null) {
		videoCommentMemberPendant.imageEnhance = imageEnhance;
	}
	final String? imageEnhanceFrame = jsonConvert.convert<String>(json['image_enhance_frame']);
	if (imageEnhanceFrame != null) {
		videoCommentMemberPendant.imageEnhanceFrame = imageEnhanceFrame;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoCommentMemberPendant.name = name;
	}
	final int? pid = jsonConvert.convert<int>(json['pid']);
	if (pid != null) {
		videoCommentMemberPendant.pid = pid;
	}
	return videoCommentMemberPendant;
}

Map<String, dynamic> $VideoCommentMemberPendantToJson(VideoCommentMemberPendant entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['expire'] = entity.expire;
	data['image'] = entity.image;
	data['image_enhance'] = entity.imageEnhance;
	data['image_enhance_frame'] = entity.imageEnhanceFrame;
	data['name'] = entity.name;
	data['pid'] = entity.pid;
	return data;
}

VideoCommentMemberUserSailing $VideoCommentMemberUserSailingFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberUserSailing videoCommentMemberUserSailing = VideoCommentMemberUserSailing();
	final VideoCommentMemberUserSailingCardbg? cardbg = jsonConvert.convert<VideoCommentMemberUserSailingCardbg>(json['cardbg']);
	if (cardbg != null) {
		videoCommentMemberUserSailing.cardbg = cardbg;
	}
	final VideoCommentMemberUserSailingPendant? pendant = jsonConvert.convert<VideoCommentMemberUserSailingPendant>(json['pendant']);
	if (pendant != null) {
		videoCommentMemberUserSailing.pendant = pendant;
	}
	return videoCommentMemberUserSailing;
}

Map<String, dynamic> $VideoCommentMemberUserSailingToJson(VideoCommentMemberUserSailing entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['cardbg'] = entity.cardbg?.toJson();
	data['pendant'] = entity.pendant?.toJson();
	return data;
}

VideoCommentMemberUserSailingCardbg $VideoCommentMemberUserSailingCardbgFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberUserSailingCardbg videoCommentMemberUserSailingCardbg = VideoCommentMemberUserSailingCardbg();
	final VideoCommentMemberUserSailingCardbgFan? fan = jsonConvert.convert<VideoCommentMemberUserSailingCardbgFan>(json['fan']);
	if (fan != null) {
		videoCommentMemberUserSailingCardbg.fan = fan;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		videoCommentMemberUserSailingCardbg.id = id;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		videoCommentMemberUserSailingCardbg.image = image;
	}
	final String? jumpUrl = jsonConvert.convert<String>(json['jump_url']);
	if (jumpUrl != null) {
		videoCommentMemberUserSailingCardbg.jumpUrl = jumpUrl;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoCommentMemberUserSailingCardbg.name = name;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		videoCommentMemberUserSailingCardbg.type = type;
	}
	return videoCommentMemberUserSailingCardbg;
}

Map<String, dynamic> $VideoCommentMemberUserSailingCardbgToJson(VideoCommentMemberUserSailingCardbg entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['fan'] = entity.fan?.toJson();
	data['id'] = entity.id;
	data['image'] = entity.image;
	data['jump_url'] = entity.jumpUrl;
	data['name'] = entity.name;
	data['type'] = entity.type;
	return data;
}

VideoCommentMemberUserSailingCardbgFan $VideoCommentMemberUserSailingCardbgFanFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberUserSailingCardbgFan videoCommentMemberUserSailingCardbgFan = VideoCommentMemberUserSailingCardbgFan();
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		videoCommentMemberUserSailingCardbgFan.color = color;
	}
	final int? isFan = jsonConvert.convert<int>(json['is_fan']);
	if (isFan != null) {
		videoCommentMemberUserSailingCardbgFan.isFan = isFan;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoCommentMemberUserSailingCardbgFan.name = name;
	}
	final String? numDesc = jsonConvert.convert<String>(json['num_desc']);
	if (numDesc != null) {
		videoCommentMemberUserSailingCardbgFan.numDesc = numDesc;
	}
	final int? number = jsonConvert.convert<int>(json['number']);
	if (number != null) {
		videoCommentMemberUserSailingCardbgFan.number = number;
	}
	return videoCommentMemberUserSailingCardbgFan;
}

Map<String, dynamic> $VideoCommentMemberUserSailingCardbgFanToJson(VideoCommentMemberUserSailingCardbgFan entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['color'] = entity.color;
	data['is_fan'] = entity.isFan;
	data['name'] = entity.name;
	data['num_desc'] = entity.numDesc;
	data['number'] = entity.number;
	return data;
}

VideoCommentMemberUserSailingPendant $VideoCommentMemberUserSailingPendantFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberUserSailingPendant videoCommentMemberUserSailingPendant = VideoCommentMemberUserSailingPendant();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		videoCommentMemberUserSailingPendant.id = id;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		videoCommentMemberUserSailingPendant.image = image;
	}
	final String? imageEnhance = jsonConvert.convert<String>(json['image_enhance']);
	if (imageEnhance != null) {
		videoCommentMemberUserSailingPendant.imageEnhance = imageEnhance;
	}
	final String? imageEnhanceFrame = jsonConvert.convert<String>(json['image_enhance_frame']);
	if (imageEnhanceFrame != null) {
		videoCommentMemberUserSailingPendant.imageEnhanceFrame = imageEnhanceFrame;
	}
	final String? jumpUrl = jsonConvert.convert<String>(json['jump_url']);
	if (jumpUrl != null) {
		videoCommentMemberUserSailingPendant.jumpUrl = jumpUrl;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoCommentMemberUserSailingPendant.name = name;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		videoCommentMemberUserSailingPendant.type = type;
	}
	return videoCommentMemberUserSailingPendant;
}

Map<String, dynamic> $VideoCommentMemberUserSailingPendantToJson(VideoCommentMemberUserSailingPendant entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['image'] = entity.image;
	data['image_enhance'] = entity.imageEnhance;
	data['image_enhance_frame'] = entity.imageEnhanceFrame;
	data['jump_url'] = entity.jumpUrl;
	data['name'] = entity.name;
	data['type'] = entity.type;
	return data;
}

VideoCommentMemberVip $VideoCommentMemberVipFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberVip videoCommentMemberVip = VideoCommentMemberVip();
	final int? accessStatus = jsonConvert.convert<int>(json['accessStatus']);
	if (accessStatus != null) {
		videoCommentMemberVip.accessStatus = accessStatus;
	}
	final int? avatarSubscript = jsonConvert.convert<int>(json['avatar_subscript']);
	if (avatarSubscript != null) {
		videoCommentMemberVip.avatarSubscript = avatarSubscript;
	}
	final String? dueRemark = jsonConvert.convert<String>(json['dueRemark']);
	if (dueRemark != null) {
		videoCommentMemberVip.dueRemark = dueRemark;
	}
	final VideoCommentMemberVipLabel? label = jsonConvert.convert<VideoCommentMemberVipLabel>(json['label']);
	if (label != null) {
		videoCommentMemberVip.label = label;
	}
	final String? nicknameColor = jsonConvert.convert<String>(json['nickname_color']);
	if (nicknameColor != null) {
		videoCommentMemberVip.nicknameColor = nicknameColor;
	}
	final int? themeType = jsonConvert.convert<int>(json['themeType']);
	if (themeType != null) {
		videoCommentMemberVip.themeType = themeType;
	}
	final int? vipDueDate = jsonConvert.convert<int>(json['vipDueDate']);
	if (vipDueDate != null) {
		videoCommentMemberVip.vipDueDate = vipDueDate;
	}
	final int? vipStatus = jsonConvert.convert<int>(json['vipStatus']);
	if (vipStatus != null) {
		videoCommentMemberVip.vipStatus = vipStatus;
	}
	final String? vipStatusWarn = jsonConvert.convert<String>(json['vipStatusWarn']);
	if (vipStatusWarn != null) {
		videoCommentMemberVip.vipStatusWarn = vipStatusWarn;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		videoCommentMemberVip.vipType = vipType;
	}
	return videoCommentMemberVip;
}

Map<String, dynamic> $VideoCommentMemberVipToJson(VideoCommentMemberVip entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['accessStatus'] = entity.accessStatus;
	data['avatar_subscript'] = entity.avatarSubscript;
	data['dueRemark'] = entity.dueRemark;
	data['label'] = entity.label?.toJson();
	data['nickname_color'] = entity.nicknameColor;
	data['themeType'] = entity.themeType;
	data['vipDueDate'] = entity.vipDueDate;
	data['vipStatus'] = entity.vipStatus;
	data['vipStatusWarn'] = entity.vipStatusWarn;
	data['vipType'] = entity.vipType;
	return data;
}

VideoCommentMemberVipLabel $VideoCommentMemberVipLabelFromJson(Map<String, dynamic> json) {
	final VideoCommentMemberVipLabel videoCommentMemberVipLabel = VideoCommentMemberVipLabel();
	final String? bgColor = jsonConvert.convert<String>(json['bg_color']);
	if (bgColor != null) {
		videoCommentMemberVipLabel.bgColor = bgColor;
	}
	final int? bgStyle = jsonConvert.convert<int>(json['bg_style']);
	if (bgStyle != null) {
		videoCommentMemberVipLabel.bgStyle = bgStyle;
	}
	final String? borderColor = jsonConvert.convert<String>(json['border_color']);
	if (borderColor != null) {
		videoCommentMemberVipLabel.borderColor = borderColor;
	}
	final String? imgLabelUriHans = jsonConvert.convert<String>(json['img_label_uri_hans']);
	if (imgLabelUriHans != null) {
		videoCommentMemberVipLabel.imgLabelUriHans = imgLabelUriHans;
	}
	final String? imgLabelUriHansStatic = jsonConvert.convert<String>(json['img_label_uri_hans_static']);
	if (imgLabelUriHansStatic != null) {
		videoCommentMemberVipLabel.imgLabelUriHansStatic = imgLabelUriHansStatic;
	}
	final String? imgLabelUriHant = jsonConvert.convert<String>(json['img_label_uri_hant']);
	if (imgLabelUriHant != null) {
		videoCommentMemberVipLabel.imgLabelUriHant = imgLabelUriHant;
	}
	final String? imgLabelUriHantStatic = jsonConvert.convert<String>(json['img_label_uri_hant_static']);
	if (imgLabelUriHantStatic != null) {
		videoCommentMemberVipLabel.imgLabelUriHantStatic = imgLabelUriHantStatic;
	}
	final String? labelTheme = jsonConvert.convert<String>(json['label_theme']);
	if (labelTheme != null) {
		videoCommentMemberVipLabel.labelTheme = labelTheme;
	}
	final String? path = jsonConvert.convert<String>(json['path']);
	if (path != null) {
		videoCommentMemberVipLabel.path = path;
	}
	final String? text = jsonConvert.convert<String>(json['text']);
	if (text != null) {
		videoCommentMemberVipLabel.text = text;
	}
	final String? textColor = jsonConvert.convert<String>(json['text_color']);
	if (textColor != null) {
		videoCommentMemberVipLabel.textColor = textColor;
	}
	final bool? useImgLabel = jsonConvert.convert<bool>(json['use_img_label']);
	if (useImgLabel != null) {
		videoCommentMemberVipLabel.useImgLabel = useImgLabel;
	}
	return videoCommentMemberVipLabel;
}

Map<String, dynamic> $VideoCommentMemberVipLabelToJson(VideoCommentMemberVipLabel entity) {
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

VideoCommentReplyControl $VideoCommentReplyControlFromJson(Map<String, dynamic> json) {
	final VideoCommentReplyControl videoCommentReplyControl = VideoCommentReplyControl();
	final String? subReplyEntryText = jsonConvert.convert<String>(json['sub_reply_entry_text']);
	if (subReplyEntryText != null) {
		videoCommentReplyControl.subReplyEntryText = subReplyEntryText;
	}
	final String? subReplyTitleText = jsonConvert.convert<String>(json['sub_reply_title_text']);
	if (subReplyTitleText != null) {
		videoCommentReplyControl.subReplyTitleText = subReplyTitleText;
	}
	final String? timeDesc = jsonConvert.convert<String>(json['time_desc']);
	if (timeDesc != null) {
		videoCommentReplyControl.timeDesc = timeDesc;
	}
	return videoCommentReplyControl;
}

Map<String, dynamic> $VideoCommentReplyControlToJson(VideoCommentReplyControl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['sub_reply_entry_text'] = entity.subReplyEntryText;
	data['sub_reply_title_text'] = entity.subReplyTitleText;
	data['time_desc'] = entity.timeDesc;
	return data;
}

VideoCommentUpAction $VideoCommentUpActionFromJson(Map<String, dynamic> json) {
	final VideoCommentUpAction videoCommentUpAction = VideoCommentUpAction();
	final bool? like = jsonConvert.convert<bool>(json['like']);
	if (like != null) {
		videoCommentUpAction.like = like;
	}
	final bool? reply = jsonConvert.convert<bool>(json['reply']);
	if (reply != null) {
		videoCommentUpAction.reply = reply;
	}
	return videoCommentUpAction;
}

Map<String, dynamic> $VideoCommentUpActionToJson(VideoCommentUpAction entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['like'] = entity.like;
	data['reply'] = entity.reply;
	return data;
}