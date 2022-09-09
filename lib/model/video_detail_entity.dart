import 'package:bilibili_flutter/generated/json/base/json_field.dart';
import 'package:bilibili_flutter/generated/json/video_detail_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class VideoDetailEntity {

	@JSONField(name: "Card")
	VideoDetailCard? card;
	@JSONField(name: "Related")
	List<VideoDetailRelated>? related;
	@JSONField(name: "Reply")
	VideoDetailReply? reply;
	@JSONField(name: "Tags")
	List<VideoDetailTags>? tags;
	@JSONField(name: "View")
	VideoDetailView? view;
	@JSONField(name: "hot_share")
	VideoDetailHotShare? hotShare;
	@JSONField(name: "view_addit")
	VideoDetailViewAddit? viewAddit;
  
  VideoDetailEntity();

  factory VideoDetailEntity.fromJson(Map<String, dynamic> json) => $VideoDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCard {

	@JSONField(name: "archive_count")
	int? archiveCount;
	@JSONField(name: "article_count")
	int? articleCount;
	VideoDetailCardCard? card;
	int? follower;
	bool? following;
	@JSONField(name: "like_num")
	int? likeNum;
	VideoDetailCardSpace? space;
  
  VideoDetailCard();

  factory VideoDetailCard.fromJson(Map<String, dynamic> json) => $VideoDetailCardFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCardCard {

	@JSONField(name: "DisplayRank")
	String? displayRank;
	@JSONField(name: "Official")
	VideoDetailCardCardOfficial? official;
	bool? approve;
	int? article;
	int? attention;
	List<dynamic>? attentions;
	String? birthday;
	String? description;
	String? face;
	@JSONField(name: "face_nft")
	int? faceNft;
	@JSONField(name: "face_nft_type")
	int? faceNftType;
	int? fans;
	int? friend;
	@JSONField(name: "is_senior_member")
	int? isSeniorMember;
	@JSONField(name: "level_info")
	VideoDetailCardCardLevelInfo? levelInfo;
	String? mid;
	String? name;
	VideoDetailCardCardNameplate? nameplate;
	@JSONField(name: "official_verify")
	VideoDetailCardCardOfficialVerify? officialVerify;
	VideoDetailCardCardPendant? pendant;
	String? place;
	String? rank;
	int? regtime;
	String? sex;
	String? sign;
	int? spacesta;
	VideoDetailCardCardVip? vip;
  
  VideoDetailCardCard();

  factory VideoDetailCardCard.fromJson(Map<String, dynamic> json) => $VideoDetailCardCardFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardCardToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCardCardOfficial {

	String? desc;
	int? role;
	String? title;
	int? type;
  
  VideoDetailCardCardOfficial();

  factory VideoDetailCardCardOfficial.fromJson(Map<String, dynamic> json) => $VideoDetailCardCardOfficialFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardCardOfficialToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCardCardLevelInfo {

	@JSONField(name: "current_exp")
	int? currentExp;
	@JSONField(name: "current_level")
	int? currentLevel;
	@JSONField(name: "current_min")
	int? currentMin;
	@JSONField(name: "next_exp")
	int? nextExp;
  
  VideoDetailCardCardLevelInfo();

  factory VideoDetailCardCardLevelInfo.fromJson(Map<String, dynamic> json) => $VideoDetailCardCardLevelInfoFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardCardLevelInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCardCardNameplate {

	String? condition;
	String? image;
	@JSONField(name: "image_small")
	String? imageSmall;
	String? level;
	String? name;
	int? nid;
  
  VideoDetailCardCardNameplate();

  factory VideoDetailCardCardNameplate.fromJson(Map<String, dynamic> json) => $VideoDetailCardCardNameplateFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardCardNameplateToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCardCardOfficialVerify {

	String? desc;
	int? type;
  
  VideoDetailCardCardOfficialVerify();

  factory VideoDetailCardCardOfficialVerify.fromJson(Map<String, dynamic> json) => $VideoDetailCardCardOfficialVerifyFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardCardOfficialVerifyToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCardCardPendant {

	int? expire;
	String? image;
	@JSONField(name: "image_enhance")
	String? imageEnhance;
	@JSONField(name: "image_enhance_frame")
	String? imageEnhanceFrame;
	String? name;
	int? pid;
  
  VideoDetailCardCardPendant();

  factory VideoDetailCardCardPendant.fromJson(Map<String, dynamic> json) => $VideoDetailCardCardPendantFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardCardPendantToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCardCardVip {

	@JSONField(name: "avatar_subscript")
	int? avatarSubscript;
	@JSONField(name: "avatar_subscript_url")
	String? avatarSubscriptUrl;
	@JSONField(name: "due_date")
	int? dueDate;
	VideoDetailCardCardVipLabel? label;
	@JSONField(name: "nickname_color")
	String? nicknameColor;
	int? role;
	int? status;
	@JSONField(name: "theme_type")
	int? themeType;
	@JSONField(name: "tv_vip_pay_type")
	int? tvVipPayType;
	@JSONField(name: "tv_vip_status")
	int? tvVipStatus;
	int? type;
	int? vipStatus;
	int? vipType;
	@JSONField(name: "vip_pay_type")
	int? vipPayType;
  
  VideoDetailCardCardVip();

  factory VideoDetailCardCardVip.fromJson(Map<String, dynamic> json) => $VideoDetailCardCardVipFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardCardVipToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCardCardVipLabel {

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
  
  VideoDetailCardCardVipLabel();

  factory VideoDetailCardCardVipLabel.fromJson(Map<String, dynamic> json) => $VideoDetailCardCardVipLabelFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardCardVipLabelToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailCardSpace {

	@JSONField(name: "l_img")
	String? lImg;
	@JSONField(name: "s_img")
	String? sImg;
  
  VideoDetailCardSpace();

  factory VideoDetailCardSpace.fromJson(Map<String, dynamic> json) => $VideoDetailCardSpaceFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailCardSpaceToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailRelated {

	int? aid;
	String? bvid;
	int? cid;
	int? copyright;
	int? ctime;
	String? desc;
	VideoDetailRelatedDimension? dimension;
	int? duration;
	@JSONField(name: "dynamic")
	String? xDynamic;
	@JSONField(name: "first_frame")
	String? firstFrame;
	@JSONField(name: "is_ogv")
	bool? isOgv;
	@JSONField(name: "mission_id")
	int? missionId;
	VideoDetailRelatedOwner? owner;
	String? pic;
	@JSONField(name: "pub_location")
	String? pubLocation;
	int? pubdate;
	@JSONField(name: "rcmd_reason")
	String? rcmdReason;
	VideoDetailRelatedRights? rights;
	@JSONField(name: "season_type")
	int? seasonType;
	@JSONField(name: "short_link")
	String? shortLink;
	@JSONField(name: "short_link_v2")
	String? shortLinkV2;
	VideoDetailRelatedStat? stat;
	int? state;
	int? tid;
	String? title;
	String? tname;
	int? videos;
	@JSONField(name: "up_from_v2")
	int? upFromV2;
	@JSONField(name: "season_id")
	int? seasonId;
  
  VideoDetailRelated();

  factory VideoDetailRelated.fromJson(Map<String, dynamic> json) => $VideoDetailRelatedFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailRelatedToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailRelatedDimension {

	int? height;
	int? rotate;
	int? width;
  
  VideoDetailRelatedDimension();

  factory VideoDetailRelatedDimension.fromJson(Map<String, dynamic> json) => $VideoDetailRelatedDimensionFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailRelatedDimensionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailRelatedOwner {

	String? face;
	int? mid;
	String? name;
  
  VideoDetailRelatedOwner();

  factory VideoDetailRelatedOwner.fromJson(Map<String, dynamic> json) => $VideoDetailRelatedOwnerFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailRelatedOwnerToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailRelatedRights {

	@JSONField(name: "arc_pay")
	int? arcPay;
	int? autoplay;
	int? bp;
	int? download;
	int? elec;
	int? hd5;
	@JSONField(name: "is_cooperation")
	int? isCooperation;
	int? movie;
	@JSONField(name: "no_background")
	int? noBackground;
	@JSONField(name: "no_reprint")
	int? noReprint;
	int? pay;
	@JSONField(name: "pay_free_watch")
	int? payFreeWatch;
	@JSONField(name: "ugc_pay")
	int? ugcPay;
	@JSONField(name: "ugc_pay_preview")
	int? ugcPayPreview;
  
  VideoDetailRelatedRights();

  factory VideoDetailRelatedRights.fromJson(Map<String, dynamic> json) => $VideoDetailRelatedRightsFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailRelatedRightsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailRelatedStat {

	int? aid;
	int? coin;
	int? danmaku;
	int? dislike;
	int? favorite;
	@JSONField(name: "his_rank")
	int? hisRank;
	int? like;
	@JSONField(name: "now_rank")
	int? nowRank;
	int? reply;
	int? share;
	int? view;
  
  VideoDetailRelatedStat();

  factory VideoDetailRelatedStat.fromJson(Map<String, dynamic> json) => $VideoDetailRelatedStatFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailRelatedStatToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailReply {

	VideoDetailReplyPage? page;
	List<VideoDetailReplyReplies>? replies;
  
  VideoDetailReply();

  factory VideoDetailReply.fromJson(Map<String, dynamic> json) => $VideoDetailReplyFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailReplyToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailReplyPage {

	int? acount;
	int? count;
	int? num;
	int? size;
  
  VideoDetailReplyPage();

  factory VideoDetailReplyPage.fromJson(Map<String, dynamic> json) => $VideoDetailReplyPageFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailReplyPageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailReplyReplies {

	int? action;
	int? assist;
	int? attr;
	VideoDetailReplyRepliesContent? content;
	int? count;
	int? ctime;
	int? dialog;
	int? fansgrade;
	int? floor;
	int? like;
	int? mid;
	int? oid;
	int? parent;
	int? rcount;
	int? root;
	int? rpid;
	@JSONField(name: "show_follow")
	bool? showFollow;
	int? state;
	int? type;
  
  VideoDetailReplyReplies();

  factory VideoDetailReplyReplies.fromJson(Map<String, dynamic> json) => $VideoDetailReplyRepliesFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailReplyRepliesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailReplyRepliesContent {

	String? device;
	String? message;
	int? plat;
  
  VideoDetailReplyRepliesContent();

  factory VideoDetailReplyRepliesContent.fromJson(Map<String, dynamic> json) => $VideoDetailReplyRepliesContentFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailReplyRepliesContentToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailTags {

	int? alpha;
	@JSONField(name: "archive_count")
	String? archiveCount;
	int? attribute;
	String? color;
	String? content;
	VideoDetailTagsCount? count;
	String? cover;
	int? ctime;
	@JSONField(name: "extra_attr")
	int? extraAttr;
	@JSONField(name: "featured_count")
	int? featuredCount;
	int? hated;
	int? hates;
	@JSONField(name: "head_cover")
	String? headCover;
	@JSONField(name: "is_activity")
	bool? isActivity;
	@JSONField(name: "is_atten")
	int? isAtten;
	@JSONField(name: "is_season")
	bool? isSeason;
	@JSONField(name: "jump_url")
	String? jumpUrl;
	int? liked;
	int? likes;
	@JSONField(name: "music_id")
	String? musicId;
	@JSONField(name: "short_content")
	String? shortContent;
	int? state;
	@JSONField(name: "subscribed_count")
	int? subscribedCount;
	@JSONField(name: "tag_id")
	int? tagId;
	@JSONField(name: "tag_name")
	String? tagName;
	@JSONField(name: "tag_type")
	String? tagType;
	int? type;
  
  VideoDetailTags();

  factory VideoDetailTags.fromJson(Map<String, dynamic> json) => $VideoDetailTagsFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailTagsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailTagsCount {

	int? atten;
	int? use;
	int? view;
  
  VideoDetailTagsCount();

  factory VideoDetailTagsCount.fromJson(Map<String, dynamic> json) => $VideoDetailTagsCountFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailTagsCountToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailView {

	int? aid;
	String? bvid;
	int? cid;
	int? copyright;
	int? ctime;
	String? desc;
	@JSONField(name: "desc_v2")
	List<VideoDetailViewDescV2>? descV2;
	VideoDetailViewDimension? dimension;
	int? duration;
	@JSONField(name: "dynamic")
	String? xDynamic;
	@JSONField(name: "honor_reply")
	VideoDetailViewHonorReply? honorReply;
	@JSONField(name: "is_chargeable_season")
	bool? isChargeableSeason;
	@JSONField(name: "is_season_display")
	bool? isSeasonDisplay;
	@JSONField(name: "is_story")
	bool? isStory;
	VideoDetailViewLabel? label;
	@JSONField(name: "like_icon")
	String? likeIcon;
	@JSONField(name: "mission_id")
	int? missionId;
	@JSONField(name: "no_cache")
	bool? noCache;
	VideoDetailViewOwner? owner;
	List<VideoDetailViewPages>? pages;
	String? pic;
	int? pubdate;
	VideoDetailViewRights? rights;
	VideoDetailViewStat? stat;
	int? state;
	VideoDetailViewSubtitle? subtitle;
	@JSONField(name: "teenage_mode")
	int? teenageMode;
	int? tid;
	String? title;
	String? tname;
	@JSONField(name: "user_garb")
	VideoDetailViewUserGarb? userGarb;
	int? videos;
  
  VideoDetailView();

  factory VideoDetailView.fromJson(Map<String, dynamic> json) => $VideoDetailViewFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewDescV2 {

	@JSONField(name: "biz_id")
	int? bizId;
	@JSONField(name: "raw_text")
	String? rawText;
	int? type;
  
  VideoDetailViewDescV2();

  factory VideoDetailViewDescV2.fromJson(Map<String, dynamic> json) => $VideoDetailViewDescV2FromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewDescV2ToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewDimension {

	int? height;
	int? rotate;
	int? width;
  
  VideoDetailViewDimension();

  factory VideoDetailViewDimension.fromJson(Map<String, dynamic> json) => $VideoDetailViewDimensionFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewDimensionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewHonorReply {

	List<VideoDetailViewHonorReplyHonor>? honor;
  
  VideoDetailViewHonorReply();

  factory VideoDetailViewHonorReply.fromJson(Map<String, dynamic> json) => $VideoDetailViewHonorReplyFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewHonorReplyToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewHonorReplyHonor {

	int? aid;
	String? desc;
	int? type;
	@JSONField(name: "weekly_recommend_num")
	int? weeklyRecommendNum;
  
  VideoDetailViewHonorReplyHonor();

  factory VideoDetailViewHonorReplyHonor.fromJson(Map<String, dynamic> json) => $VideoDetailViewHonorReplyHonorFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewHonorReplyHonorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewLabel {

	int? type;
  
  VideoDetailViewLabel();

  factory VideoDetailViewLabel.fromJson(Map<String, dynamic> json) => $VideoDetailViewLabelFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewLabelToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewOwner {

	String? face;
	int? mid;
	String? name;
  
  VideoDetailViewOwner();

  factory VideoDetailViewOwner.fromJson(Map<String, dynamic> json) => $VideoDetailViewOwnerFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewOwnerToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewPages {

	int? cid;
	VideoDetailViewPagesDimension? dimension;
	int? duration;
	@JSONField(name: "first_frame")
	String? firstFrame;
	String? from;
	int? page;
	@JSONField(name: "part")
	String? xPart;
	String? vid;
	String? weblink;
  
  VideoDetailViewPages();

  factory VideoDetailViewPages.fromJson(Map<String, dynamic> json) => $VideoDetailViewPagesFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewPagesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewPagesDimension {

	int? height;
	int? rotate;
	int? width;
  
  VideoDetailViewPagesDimension();

  factory VideoDetailViewPagesDimension.fromJson(Map<String, dynamic> json) => $VideoDetailViewPagesDimensionFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewPagesDimensionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewRights {

	@JSONField(name: "arc_pay")
	int? arcPay;
	int? autoplay;
	int? bp;
	@JSONField(name: "clean_mode")
	int? cleanMode;
	int? download;
	int? elec;
	@JSONField(name: "free_watch")
	int? freeWatch;
	int? hd5;
	@JSONField(name: "is_360")
	int? is360;
	@JSONField(name: "is_cooperation")
	int? isCooperation;
	@JSONField(name: "is_stein_gate")
	int? isSteinGate;
	int? movie;
	@JSONField(name: "no_background")
	int? noBackground;
	@JSONField(name: "no_reprint")
	int? noReprint;
	@JSONField(name: "no_share")
	int? noShare;
	int? pay;
	@JSONField(name: "ugc_pay")
	int? ugcPay;
	@JSONField(name: "ugc_pay_preview")
	int? ugcPayPreview;
  
  VideoDetailViewRights();

  factory VideoDetailViewRights.fromJson(Map<String, dynamic> json) => $VideoDetailViewRightsFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewRightsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewStat {

	int? aid;
	@JSONField(name: "argue_msg")
	String? argueMsg;
	int? coin;
	int? danmaku;
	int? dislike;
	String? evaluation;
	int? favorite;
	@JSONField(name: "his_rank")
	int? hisRank;
	int? like;
	@JSONField(name: "now_rank")
	int? nowRank;
	int? reply;
	int? share;
	int? view;
  
  VideoDetailViewStat();

  factory VideoDetailViewStat.fromJson(Map<String, dynamic> json) => $VideoDetailViewStatFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewStatToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewSubtitle {

	@JSONField(name: "allow_submit")
	bool? allowSubmit;
	List<VideoDetailViewSubtitleList>? list;
  
  VideoDetailViewSubtitle();

  factory VideoDetailViewSubtitle.fromJson(Map<String, dynamic> json) => $VideoDetailViewSubtitleFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewSubtitleToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewSubtitleList {

	@JSONField(name: "ai_status")
	int? aiStatus;
	@JSONField(name: "ai_type")
	int? aiType;
	VideoDetailViewSubtitleListAuthor? author;
	int? id;
	@JSONField(name: "id_str")
	String? idStr;
	@JSONField(name: "is_lock")
	bool? isLock;
	String? lan;
	@JSONField(name: "lan_doc")
	String? lanDoc;
	@JSONField(name: "subtitle_url")
	String? subtitleUrl;
	int? type;
  
  VideoDetailViewSubtitleList();

  factory VideoDetailViewSubtitleList.fromJson(Map<String, dynamic> json) => $VideoDetailViewSubtitleListFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewSubtitleListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewSubtitleListAuthor {

	int? birthday;
	String? face;
	@JSONField(name: "in_reg_audit")
	int? inRegAudit;
	@JSONField(name: "is_deleted")
	int? isDeleted;
	@JSONField(name: "is_fake_account")
	int? isFakeAccount;
	@JSONField(name: "is_senior_member")
	int? isSeniorMember;
	int? mid;
	String? name;
	int? rank;
	String? sex;
	String? sign;
  
  VideoDetailViewSubtitleListAuthor();

  factory VideoDetailViewSubtitleListAuthor.fromJson(Map<String, dynamic> json) => $VideoDetailViewSubtitleListAuthorFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewSubtitleListAuthorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewUserGarb {

	@JSONField(name: "url_image_ani_cut")
	String? urlImageAniCut;
  
  VideoDetailViewUserGarb();

  factory VideoDetailViewUserGarb.fromJson(Map<String, dynamic> json) => $VideoDetailViewUserGarbFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewUserGarbToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailHotShare {

	List<dynamic>? list;
	@JSONField(name: "show")
	bool? xShow;
  
  VideoDetailHotShare();

  factory VideoDetailHotShare.fromJson(Map<String, dynamic> json) => $VideoDetailHotShareFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailHotShareToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoDetailViewAddit {

	@JSONField(name: "63")
	bool? x63;
	@JSONField(name: "64")
	bool? x64;
  
  VideoDetailViewAddit();

  factory VideoDetailViewAddit.fromJson(Map<String, dynamic> json) => $VideoDetailViewAdditFromJson(json);

  Map<String, dynamic> toJson() => $VideoDetailViewAdditToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}