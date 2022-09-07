import 'package:bilibili_flutter/generated/json/base/json_convert_content.dart';
import 'package:bilibili_flutter/model/test_entity.dart';

TestEntity $TestEntityFromJson(Map<String, dynamic> json) {
	final TestEntity testEntity = TestEntity();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		testEntity.name = name;
	}
	return testEntity;
}

Map<String, dynamic> $TestEntityToJson(TestEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	return data;
}