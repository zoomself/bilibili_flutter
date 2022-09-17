import 'package:bilibili_flutter/generated/json/base/json_field.dart';
import 'package:bilibili_flutter/generated/json/video_comment_entity.g.dart';
import 'dart:convert';

import 'member_entity.dart';

@JsonSerializable()
class VideoCommentEntity {

	int? action;
	int? assist;
	int? attr;
	VideoCommentContent? content;
	int? count;
	int? ctime;
	int? dialog;
	int? fansgrade;
	VideoCommentFolder? folder;
	bool? invisible;
	int? like;
	VideoCommentMember? member;
	int? mid;
	int? oid;
	int? parent;
	@JSONField(name: "parent_str")
	String? parentStr;
	int? rcount;
	@JSONField(name: "reply_control")
	VideoCommentReplyControl? replyControl;
	int? root;
	@JSONField(name: "root_str")
	String? rootStr;
	int? rpid;
	@JSONField(name: "rpid_str")
	String? rpidStr;
	@JSONField(name: "show_follow")
	bool? showFollow;
	int? state;
	int? type;
	@JSONField(name: "up_action")
	VideoCommentUpAction? upAction;
	List<VideoCommentEntity>? replies;

	VideoCommentEntity();

  factory VideoCommentEntity.fromJson(Map<String, dynamic> json) => $VideoCommentEntityFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentContent {

	String? device;
	@JSONField(name: "jump_url")
	VideoCommentContentJumpUrl? jumpUrl;
	@JSONField(name: "max_line")
	int? maxLine;
	List<MemberEntity>? members;
	String? message;
	int? plat;
  
  VideoCommentContent();

  factory VideoCommentContent.fromJson(Map<String, dynamic> json) => $VideoCommentContentFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentContentToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentContentJumpUrl {


  
  VideoCommentContentJumpUrl();

  factory VideoCommentContentJumpUrl.fromJson(Map<String, dynamic> json) => $VideoCommentContentJumpUrlFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentContentJumpUrlToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentFolder {

	@JSONField(name: "has_folded")
	bool? hasFolded;
	@JSONField(name: "is_folded")
	bool? isFolded;
	String? rule;
  
  VideoCommentFolder();

  factory VideoCommentFolder.fromJson(Map<String, dynamic> json) => $VideoCommentFolderFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentFolderToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMember {

	String? avatar;
	@JSONField(name: "contract_desc")
	String? contractDesc;
	@JSONField(name: "face_nft_new")
	int? faceNftNew;
	@JSONField(name: "is_contractor")
	bool? isContractor;
	@JSONField(name: "is_senior_member")
	int? isSeniorMember;
	@JSONField(name: "level_info")
	VideoCommentMemberLevelInfo? levelInfo;
	String? mid;
	VideoCommentMemberNameplate? nameplate;
	@JSONField(name: "official_verify")
	VideoCommentMemberOfficialVerify? officialVerify;
	VideoCommentMemberPendant? pendant;
	String? rank;
	String? sex;
	String? sign;
	String? uname;
	@JSONField(name: "user_sailing")
	VideoCommentMemberUserSailing? userSailing;
	VideoCommentMemberVip? vip;
  
  VideoCommentMember();

  factory VideoCommentMember.fromJson(Map<String, dynamic> json) => $VideoCommentMemberFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberLevelInfo {

	@JSONField(name: "current_exp")
	int? currentExp;
	@JSONField(name: "current_level")
	int? currentLevel;
	@JSONField(name: "current_min")
	int? currentMin;
	@JSONField(name: "next_exp")
	int? nextExp;
  
  VideoCommentMemberLevelInfo();

  factory VideoCommentMemberLevelInfo.fromJson(Map<String, dynamic> json) => $VideoCommentMemberLevelInfoFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberLevelInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberNameplate {

	String? condition;
	String? image;
	@JSONField(name: "image_small")
	String? imageSmall;
	String? level;
	String? name;
	int? nid;
  
  VideoCommentMemberNameplate();

  factory VideoCommentMemberNameplate.fromJson(Map<String, dynamic> json) => $VideoCommentMemberNameplateFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberNameplateToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberOfficialVerify {

	String? desc;
	int? type;
  
  VideoCommentMemberOfficialVerify();

  factory VideoCommentMemberOfficialVerify.fromJson(Map<String, dynamic> json) => $VideoCommentMemberOfficialVerifyFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberOfficialVerifyToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberPendant {

	int? expire;
	String? image;
	@JSONField(name: "image_enhance")
	String? imageEnhance;
	@JSONField(name: "image_enhance_frame")
	String? imageEnhanceFrame;
	String? name;
	int? pid;
  
  VideoCommentMemberPendant();

  factory VideoCommentMemberPendant.fromJson(Map<String, dynamic> json) => $VideoCommentMemberPendantFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberPendantToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberUserSailing {

	VideoCommentMemberUserSailingCardbg? cardbg;
	VideoCommentMemberUserSailingPendant? pendant;
  
  VideoCommentMemberUserSailing();

  factory VideoCommentMemberUserSailing.fromJson(Map<String, dynamic> json) => $VideoCommentMemberUserSailingFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberUserSailingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberUserSailingCardbg {

	VideoCommentMemberUserSailingCardbgFan? fan;
	int? id;
	String? image;
	@JSONField(name: "jump_url")
	String? jumpUrl;
	String? name;
	String? type;
  
  VideoCommentMemberUserSailingCardbg();

  factory VideoCommentMemberUserSailingCardbg.fromJson(Map<String, dynamic> json) => $VideoCommentMemberUserSailingCardbgFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberUserSailingCardbgToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberUserSailingCardbgFan {

	String? color;
	@JSONField(name: "is_fan")
	int? isFan;
	String? name;
	@JSONField(name: "num_desc")
	String? numDesc;
	int? number;
  
  VideoCommentMemberUserSailingCardbgFan();

  factory VideoCommentMemberUserSailingCardbgFan.fromJson(Map<String, dynamic> json) => $VideoCommentMemberUserSailingCardbgFanFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberUserSailingCardbgFanToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberUserSailingPendant {

	int? id;
	String? image;
	@JSONField(name: "image_enhance")
	String? imageEnhance;
	@JSONField(name: "image_enhance_frame")
	String? imageEnhanceFrame;
	@JSONField(name: "jump_url")
	String? jumpUrl;
	String? name;
	String? type;
  
  VideoCommentMemberUserSailingPendant();

  factory VideoCommentMemberUserSailingPendant.fromJson(Map<String, dynamic> json) => $VideoCommentMemberUserSailingPendantFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberUserSailingPendantToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberVip {

	int? accessStatus;
	@JSONField(name: "avatar_subscript")
	int? avatarSubscript;
	String? dueRemark;
	VideoCommentMemberVipLabel? label;
	@JSONField(name: "nickname_color")
	String? nicknameColor;
	int? themeType;
	int? vipDueDate;
	int? vipStatus;
	String? vipStatusWarn;
	int? vipType;
  
  VideoCommentMemberVip();

  factory VideoCommentMemberVip.fromJson(Map<String, dynamic> json) => $VideoCommentMemberVipFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberVipToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentMemberVipLabel {

	@JSONField(name: "bg_color")
	String? bgColor;
	@JSONField(name: "bg_style")
	int? bgStyle;
	@JSONField(name: "border_color")
	String? borderColor;
	@JSONField(name: "img_label_uri_hans")
	String? imgLabelUriHans;
	@JSONField(name: "img_label_uri_hans_static")
	String? imgLabelUriHansStatic;
	@JSONField(name: "img_label_uri_hant")
	String? imgLabelUriHant;
	@JSONField(name: "img_label_uri_hant_static")
	String? imgLabelUriHantStatic;
	@JSONField(name: "label_theme")
	String? labelTheme;
	String? path;
	String? text;
	@JSONField(name: "text_color")
	String? textColor;
	@JSONField(name: "use_img_label")
	bool? useImgLabel;
  
  VideoCommentMemberVipLabel();

  factory VideoCommentMemberVipLabel.fromJson(Map<String, dynamic> json) => $VideoCommentMemberVipLabelFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentMemberVipLabelToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentReplyControl {

	@JSONField(name: "sub_reply_entry_text")
	String? subReplyEntryText;
	@JSONField(name: "sub_reply_title_text")
	String? subReplyTitleText;
	@JSONField(name: "time_desc")
	String? timeDesc;
  
  VideoCommentReplyControl();

  factory VideoCommentReplyControl.fromJson(Map<String, dynamic> json) => $VideoCommentReplyControlFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentReplyControlToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentUpAction {

	bool? like;
	bool? reply;
  
  VideoCommentUpAction();

  factory VideoCommentUpAction.fromJson(Map<String, dynamic> json) => $VideoCommentUpActionFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentUpActionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}