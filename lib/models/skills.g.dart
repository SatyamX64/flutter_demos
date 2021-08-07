// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skills _$SkillsFromJson(Map<String, dynamic> json) {
  return Skills(
    json['yearsOfExperience'] as int,
    (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SkillsToJson(Skills instance) => <String, dynamic>{
      'yearsOfExperience': instance.yearsOfExperience,
      'skills': instance.skills,
    };
