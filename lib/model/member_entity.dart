import 'package:bilibili_flutter/generated/json/base/json_field.dart';
import 'package:bilibili_flutter/generated/json/member_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MemberEntity {

	String? avatar;
	@JSONField(name: "face_nft_new")
	int? faceNftNew;
	@JSONField(name: "is_senior_member")
	int? isSeniorMember;
	String? rank;
	String? sex;
	String? sign;
	String? uname;
  
  MemberEntity();

  factory MemberEntity.fromJson(Map<String, dynamic> json) => $MemberEntityFromJson(json);

  Map<String, dynamic> toJson() => $MemberEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}