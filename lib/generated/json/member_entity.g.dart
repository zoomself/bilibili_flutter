import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/member_entity.dart';

MemberEntity $MemberEntityFromJson(Map<String, dynamic> json) {
	final MemberEntity memberEntity = MemberEntity();
	final String? avatar = jsonConvert.convert<String>(json['avatar']);
	if (avatar != null) {
		memberEntity.avatar = avatar;
	}
	final int? faceNftNew = jsonConvert.convert<int>(json['face_nft_new']);
	if (faceNftNew != null) {
		memberEntity.faceNftNew = faceNftNew;
	}
	final int? isSeniorMember = jsonConvert.convert<int>(json['is_senior_member']);
	if (isSeniorMember != null) {
		memberEntity.isSeniorMember = isSeniorMember;
	}
	final String? rank = jsonConvert.convert<String>(json['rank']);
	if (rank != null) {
		memberEntity.rank = rank;
	}
	final String? sex = jsonConvert.convert<String>(json['sex']);
	if (sex != null) {
		memberEntity.sex = sex;
	}
	final String? sign = jsonConvert.convert<String>(json['sign']);
	if (sign != null) {
		memberEntity.sign = sign;
	}
	final String? uname = jsonConvert.convert<String>(json['uname']);
	if (uname != null) {
		memberEntity.uname = uname;
	}
	return memberEntity;
}

Map<String, dynamic> $MemberEntityToJson(MemberEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['avatar'] = entity.avatar;
	data['face_nft_new'] = entity.faceNftNew;
	data['is_senior_member'] = entity.isSeniorMember;
	data['rank'] = entity.rank;
	data['sex'] = entity.sex;
	data['sign'] = entity.sign;
	data['uname'] = entity.uname;
	return data;
}