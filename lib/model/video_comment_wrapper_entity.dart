import 'package:bilibili_flutter/generated/json/base/json_field.dart';
import 'package:bilibili_flutter/generated/json/video_comment_wrapper_entity.g.dart';
import 'dart:convert';

import 'package:bilibili_flutter/model/video_comment_entity.dart';

@JsonSerializable()
class VideoCommentWrapperEntity {

	int? assist;
	int? blacklist;
	VideoCommentWrapperCm? cm;
	@JSONField(name: "cm_info")
	VideoCommentWrapperCmInfo? cmInfo;
	VideoCommentWrapperConfig? config;
	VideoCommentWrapperControl? control;
	VideoCommentWrapperCursor? cursor;
	VideoCommentWrapperEffects? effects;
	VideoCommentWrapperFolder? folder;
	int? note;
	List<VideoCommentEntity>? replies;
	VideoCommentWrapperTop? top;
	@JSONField(name: "up_selection")
	VideoCommentWrapperUpSelection? upSelection;
	VideoCommentWrapperUpper? upper;
	int? vote;
  
  VideoCommentWrapperEntity();

  factory VideoCommentWrapperEntity.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperEntityFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperCm {


  
  VideoCommentWrapperCm();

  factory VideoCommentWrapperCm.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperCmFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperCmToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperCmInfo {


  
  VideoCommentWrapperCmInfo();

  factory VideoCommentWrapperCmInfo.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperCmInfoFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperCmInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperConfig {

	@JSONField(name: "read_only")
	bool? readOnly;
	@JSONField(name: "show_up_flag")
	bool? showUpFlag;
	int? showtopic;
  
  VideoCommentWrapperConfig();

  factory VideoCommentWrapperConfig.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperConfigFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperConfigToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperControl {

	@JSONField(name: "answer_guide_android_url")
	String? answerGuideAndroidUrl;
	@JSONField(name: "answer_guide_icon_url")
	String? answerGuideIconUrl;
	@JSONField(name: "answer_guide_ios_url")
	String? answerGuideIosUrl;
	@JSONField(name: "answer_guide_text")
	String? answerGuideText;
	@JSONField(name: "bg_text")
	String? bgText;
	@JSONField(name: "child_input_text")
	String? childInputText;
	@JSONField(name: "disable_jump_emote")
	bool? disableJumpEmote;
	@JSONField(name: "giveup_input_text")
	String? giveupInputText;
	@JSONField(name: "input_disable")
	bool? inputDisable;
	@JSONField(name: "root_input_text")
	String? rootInputText;
	@JSONField(name: "show_text")
	String? showText;
	@JSONField(name: "show_type")
	int? showType;
	@JSONField(name: "web_selection")
	bool? webSelection;
  
  VideoCommentWrapperControl();

  factory VideoCommentWrapperControl.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperControlFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperControlToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperCursor {

	@JSONField(name: "all_count")
	int? allCount;
	@JSONField(name: "is_begin")
	bool? isBegin;
	@JSONField(name: "is_end")
	bool? isEnd;
	int? mode;
	String? name;
	int? next;
	int? prev;
	@JSONField(name: "support_mode")
	List<int>? supportMode;
  
  VideoCommentWrapperCursor();

  factory VideoCommentWrapperCursor.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperCursorFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperCursorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperEffects {

	String? preloading;
  
  VideoCommentWrapperEffects();

  factory VideoCommentWrapperEffects.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperEffectsFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperEffectsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperFolder {

	@JSONField(name: "has_folded")
	bool? hasFolded;
	@JSONField(name: "is_folded")
	bool? isFolded;
	String? rule;
  
  VideoCommentWrapperFolder();

  factory VideoCommentWrapperFolder.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperFolderFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperFolderToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperTop {


  
  VideoCommentWrapperTop();

  factory VideoCommentWrapperTop.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperTopFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperTopToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperUpSelection {

	@JSONField(name: "ignore_count")
	int? ignoreCount;
	@JSONField(name: "pending_count")
	int? pendingCount;
  
  VideoCommentWrapperUpSelection();

  factory VideoCommentWrapperUpSelection.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperUpSelectionFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperUpSelectionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoCommentWrapperUpper {

	int? mid;
  
  VideoCommentWrapperUpper();

  factory VideoCommentWrapperUpper.fromJson(Map<String, dynamic> json) => $VideoCommentWrapperUpperFromJson(json);

  Map<String, dynamic> toJson() => $VideoCommentWrapperUpperToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}