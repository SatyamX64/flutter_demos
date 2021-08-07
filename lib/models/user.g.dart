// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id']);
  return User(
    json['name'] as String,
    json['email'] as String,
    json['is-adult'] as bool? ?? false,
    json['id'] as String,
    json['registration_date_millis'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'is-adult': instance.isAdult,
      'id': instance.id,
      'registration_date_millis': instance.registrationDateMillis,
    };
