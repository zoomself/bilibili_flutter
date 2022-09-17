import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/video_comment_wrapper_entity.dart';
import 'package:bilibili_flutter/model/video_comment_entity.dart';


VideoCommentWrapperEntity $VideoCommentWrapperEntityFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperEntity videoCommentWrapperEntity = VideoCommentWrapperEntity();
	final int? assist = jsonConvert.convert<int>(json['assist']);
	if (assist != null) {
		videoCommentWrapperEntity.assist = assist;
	}
	final int? blacklist = jsonConvert.convert<int>(json['blacklist']);
	if (blacklist != null) {
		videoCommentWrapperEntity.blacklist = blacklist;
	}
	final VideoCommentWrapperCm? cm = jsonConvert.convert<VideoCommentWrapperCm>(json['cm']);
	if (cm != null) {
		videoCommentWrapperEntity.cm = cm;
	}
	final VideoCommentWrapperCmInfo? cmInfo = jsonConvert.convert<VideoCommentWrapperCmInfo>(json['cm_info']);
	if (cmInfo != null) {
		videoCommentWrapperEntity.cmInfo = cmInfo;
	}
	final VideoCommentWrapperConfig? config = jsonConvert.convert<VideoCommentWrapperConfig>(json['config']);
	if (config != null) {
		videoCommentWrapperEntity.config = config;
	}
	final VideoCommentWrapperControl? control = jsonConvert.convert<VideoCommentWrapperControl>(json['control']);
	if (control != null) {
		videoCommentWrapperEntity.control = control;
	}
	final VideoCommentWrapperCursor? cursor = jsonConvert.convert<VideoCommentWrapperCursor>(json['cursor']);
	if (cursor != null) {
		videoCommentWrapperEntity.cursor = cursor;
	}
	final VideoCommentWrapperEffects? effects = jsonConvert.convert<VideoCommentWrapperEffects>(json['effects']);
	if (effects != null) {
		videoCommentWrapperEntity.effects = effects;
	}
	final VideoCommentWrapperFolder? folder = jsonConvert.convert<VideoCommentWrapperFolder>(json['folder']);
	if (folder != null) {
		videoCommentWrapperEntity.folder = folder;
	}
	final int? note = jsonConvert.convert<int>(json['note']);
	if (note != null) {
		videoCommentWrapperEntity.note = note;
	}
	final List<VideoCommentEntity>? replies = jsonConvert.convertListNotNull<VideoCommentEntity>(json['replies']);
	if (replies != null) {
		videoCommentWrapperEntity.replies = replies;
	}
	final VideoCommentWrapperTop? top = jsonConvert.convert<VideoCommentWrapperTop>(json['top']);
	if (top != null) {
		videoCommentWrapperEntity.top = top;
	}
	final VideoCommentWrapperUpSelection? upSelection = jsonConvert.convert<VideoCommentWrapperUpSelection>(json['up_selection']);
	if (upSelection != null) {
		videoCommentWrapperEntity.upSelection = upSelection;
	}
	final VideoCommentWrapperUpper? upper = jsonConvert.convert<VideoCommentWrapperUpper>(json['upper']);
	if (upper != null) {
		videoCommentWrapperEntity.upper = upper;
	}
	final int? vote = jsonConvert.convert<int>(json['vote']);
	if (vote != null) {
		videoCommentWrapperEntity.vote = vote;
	}
	return videoCommentWrapperEntity;
}

Map<String, dynamic> $VideoCommentWrapperEntityToJson(VideoCommentWrapperEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['assist'] = entity.assist;
	data['blacklist'] = entity.blacklist;
	data['cm'] = entity.cm?.toJson();
	data['cm_info'] = entity.cmInfo?.toJson();
	data['config'] = entity.config?.toJson();
	data['control'] = entity.control?.toJson();
	data['cursor'] = entity.cursor?.toJson();
	data['effects'] = entity.effects?.toJson();
	data['folder'] = entity.folder?.toJson();
	data['note'] = entity.note;
	data['replies'] =  entity.replies?.map((v) => v.toJson()).toList();
	data['top'] = entity.top?.toJson();
	data['up_selection'] = entity.upSelection?.toJson();
	data['upper'] = entity.upper?.toJson();
	data['vote'] = entity.vote;
	return data;
}

VideoCommentWrapperCm $VideoCommentWrapperCmFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperCm videoCommentWrapperCm = VideoCommentWrapperCm();
	return videoCommentWrapperCm;
}

Map<String, dynamic> $VideoCommentWrapperCmToJson(VideoCommentWrapperCm entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

VideoCommentWrapperCmInfo $VideoCommentWrapperCmInfoFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperCmInfo videoCommentWrapperCmInfo = VideoCommentWrapperCmInfo();
	return videoCommentWrapperCmInfo;
}

Map<String, dynamic> $VideoCommentWrapperCmInfoToJson(VideoCommentWrapperCmInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

VideoCommentWrapperConfig $VideoCommentWrapperConfigFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperConfig videoCommentWrapperConfig = VideoCommentWrapperConfig();
	final bool? readOnly = jsonConvert.convert<bool>(json['read_only']);
	if (readOnly != null) {
		videoCommentWrapperConfig.readOnly = readOnly;
	}
	final bool? showUpFlag = jsonConvert.convert<bool>(json['show_up_flag']);
	if (showUpFlag != null) {
		videoCommentWrapperConfig.showUpFlag = showUpFlag;
	}
	final int? showtopic = jsonConvert.convert<int>(json['showtopic']);
	if (showtopic != null) {
		videoCommentWrapperConfig.showtopic = showtopic;
	}
	return videoCommentWrapperConfig;
}

Map<String, dynamic> $VideoCommentWrapperConfigToJson(VideoCommentWrapperConfig entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['read_only'] = entity.readOnly;
	data['show_up_flag'] = entity.showUpFlag;
	data['showtopic'] = entity.showtopic;
	return data;
}

VideoCommentWrapperControl $VideoCommentWrapperControlFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperControl videoCommentWrapperControl = VideoCommentWrapperControl();
	final String? answerGuideAndroidUrl = jsonConvert.convert<String>(json['answer_guide_android_url']);
	if (answerGuideAndroidUrl != null) {
		videoCommentWrapperControl.answerGuideAndroidUrl = answerGuideAndroidUrl;
	}
	final String? answerGuideIconUrl = jsonConvert.convert<String>(json['answer_guide_icon_url']);
	if (answerGuideIconUrl != null) {
		videoCommentWrapperControl.answerGuideIconUrl = answerGuideIconUrl;
	}
	final String? answerGuideIosUrl = jsonConvert.convert<String>(json['answer_guide_ios_url']);
	if (answerGuideIosUrl != null) {
		videoCommentWrapperControl.answerGuideIosUrl = answerGuideIosUrl;
	}
	final String? answerGuideText = jsonConvert.convert<String>(json['answer_guide_text']);
	if (answerGuideText != null) {
		videoCommentWrapperControl.answerGuideText = answerGuideText;
	}
	final String? bgText = jsonConvert.convert<String>(json['bg_text']);
	if (bgText != null) {
		videoCommentWrapperControl.bgText = bgText;
	}
	final String? childInputText = jsonConvert.convert<String>(json['child_input_text']);
	if (childInputText != null) {
		videoCommentWrapperControl.childInputText = childInputText;
	}
	final bool? disableJumpEmote = jsonConvert.convert<bool>(json['disable_jump_emote']);
	if (disableJumpEmote != null) {
		videoCommentWrapperControl.disableJumpEmote = disableJumpEmote;
	}
	final String? giveupInputText = jsonConvert.convert<String>(json['giveup_input_text']);
	if (giveupInputText != null) {
		videoCommentWrapperControl.giveupInputText = giveupInputText;
	}
	final bool? inputDisable = jsonConvert.convert<bool>(json['input_disable']);
	if (inputDisable != null) {
		videoCommentWrapperControl.inputDisable = inputDisable;
	}
	final String? rootInputText = jsonConvert.convert<String>(json['root_input_text']);
	if (rootInputText != null) {
		videoCommentWrapperControl.rootInputText = rootInputText;
	}
	final String? showText = jsonConvert.convert<String>(json['show_text']);
	if (showText != null) {
		videoCommentWrapperControl.showText = showText;
	}
	final int? showType = jsonConvert.convert<int>(json['show_type']);
	if (showType != null) {
		videoCommentWrapperControl.showType = showType;
	}
	final bool? webSelection = jsonConvert.convert<bool>(json['web_selection']);
	if (webSelection != null) {
		videoCommentWrapperControl.webSelection = webSelection;
	}
	return videoCommentWrapperControl;
}

Map<String, dynamic> $VideoCommentWrapperControlToJson(VideoCommentWrapperControl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['answer_guide_android_url'] = entity.answerGuideAndroidUrl;
	data['answer_guide_icon_url'] = entity.answerGuideIconUrl;
	data['answer_guide_ios_url'] = entity.answerGuideIosUrl;
	data['answer_guide_text'] = entity.answerGuideText;
	data['bg_text'] = entity.bgText;
	data['child_input_text'] = entity.childInputText;
	data['disable_jump_emote'] = entity.disableJumpEmote;
	data['giveup_input_text'] = entity.giveupInputText;
	data['input_disable'] = entity.inputDisable;
	data['root_input_text'] = entity.rootInputText;
	data['show_text'] = entity.showText;
	data['show_type'] = entity.showType;
	data['web_selection'] = entity.webSelection;
	return data;
}

VideoCommentWrapperCursor $VideoCommentWrapperCursorFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperCursor videoCommentWrapperCursor = VideoCommentWrapperCursor();
	final int? allCount = jsonConvert.convert<int>(json['all_count']);
	if (allCount != null) {
		videoCommentWrapperCursor.allCount = allCount;
	}
	final bool? isBegin = jsonConvert.convert<bool>(json['is_begin']);
	if (isBegin != null) {
		videoCommentWrapperCursor.isBegin = isBegin;
	}
	final bool? isEnd = jsonConvert.convert<bool>(json['is_end']);
	if (isEnd != null) {
		videoCommentWrapperCursor.isEnd = isEnd;
	}
	final int? mode = jsonConvert.convert<int>(json['mode']);
	if (mode != null) {
		videoCommentWrapperCursor.mode = mode;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoCommentWrapperCursor.name = name;
	}
	final int? next = jsonConvert.convert<int>(json['next']);
	if (next != null) {
		videoCommentWrapperCursor.next = next;
	}
	final int? prev = jsonConvert.convert<int>(json['prev']);
	if (prev != null) {
		videoCommentWrapperCursor.prev = prev;
	}
	final List<int>? supportMode = jsonConvert.convertListNotNull<int>(json['support_mode']);
	if (supportMode != null) {
		videoCommentWrapperCursor.supportMode = supportMode;
	}
	return videoCommentWrapperCursor;
}

Map<String, dynamic> $VideoCommentWrapperCursorToJson(VideoCommentWrapperCursor entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['all_count'] = entity.allCount;
	data['is_begin'] = entity.isBegin;
	data['is_end'] = entity.isEnd;
	data['mode'] = entity.mode;
	data['name'] = entity.name;
	data['next'] = entity.next;
	data['prev'] = entity.prev;
	data['support_mode'] =  entity.supportMode;
	return data;
}

VideoCommentWrapperEffects $VideoCommentWrapperEffectsFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperEffects videoCommentWrapperEffects = VideoCommentWrapperEffects();
	final String? preloading = jsonConvert.convert<String>(json['preloading']);
	if (preloading != null) {
		videoCommentWrapperEffects.preloading = preloading;
	}
	return videoCommentWrapperEffects;
}

Map<String, dynamic> $VideoCommentWrapperEffectsToJson(VideoCommentWrapperEffects entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['preloading'] = entity.preloading;
	return data;
}

VideoCommentWrapperFolder $VideoCommentWrapperFolderFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperFolder videoCommentWrapperFolder = VideoCommentWrapperFolder();
	final bool? hasFolded = jsonConvert.convert<bool>(json['has_folded']);
	if (hasFolded != null) {
		videoCommentWrapperFolder.hasFolded = hasFolded;
	}
	final bool? isFolded = jsonConvert.convert<bool>(json['is_folded']);
	if (isFolded != null) {
		videoCommentWrapperFolder.isFolded = isFolded;
	}
	final String? rule = jsonConvert.convert<String>(json['rule']);
	if (rule != null) {
		videoCommentWrapperFolder.rule = rule;
	}
	return videoCommentWrapperFolder;
}

Map<String, dynamic> $VideoCommentWrapperFolderToJson(VideoCommentWrapperFolder entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['has_folded'] = entity.hasFolded;
	data['is_folded'] = entity.isFolded;
	data['rule'] = entity.rule;
	return data;
}

VideoCommentWrapperTop $VideoCommentWrapperTopFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperTop videoCommentWrapperTop = VideoCommentWrapperTop();
	return videoCommentWrapperTop;
}

Map<String, dynamic> $VideoCommentWrapperTopToJson(VideoCommentWrapperTop entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

VideoCommentWrapperUpSelection $VideoCommentWrapperUpSelectionFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperUpSelection videoCommentWrapperUpSelection = VideoCommentWrapperUpSelection();
	final int? ignoreCount = jsonConvert.convert<int>(json['ignore_count']);
	if (ignoreCount != null) {
		videoCommentWrapperUpSelection.ignoreCount = ignoreCount;
	}
	final int? pendingCount = jsonConvert.convert<int>(json['pending_count']);
	if (pendingCount != null) {
		videoCommentWrapperUpSelection.pendingCount = pendingCount;
	}
	return videoCommentWrapperUpSelection;
}

Map<String, dynamic> $VideoCommentWrapperUpSelectionToJson(VideoCommentWrapperUpSelection entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ignore_count'] = entity.ignoreCount;
	data['pending_count'] = entity.pendingCount;
	return data;
}

VideoCommentWrapperUpper $VideoCommentWrapperUpperFromJson(Map<String, dynamic> json) {
	final VideoCommentWrapperUpper videoCommentWrapperUpper = VideoCommentWrapperUpper();
	final int? mid = jsonConvert.convert<int>(json['mid']);
	if (mid != null) {
		videoCommentWrapperUpper.mid = mid;
	}
	return videoCommentWrapperUpper;
}

Map<String, dynamic> $VideoCommentWrapperUpperToJson(VideoCommentWrapperUpper entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['mid'] = entity.mid;
	return data;
}