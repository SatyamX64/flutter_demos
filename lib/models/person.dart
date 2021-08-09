library person;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_demos/models/serializers.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  int get id;
  String get name;
  Gender get gender;
  List<String> get skills;

  Person._();

  factory Person([updates(PersonBuilder b)]) = _$Person;

  String toJson() {
    return json.encode(serializers.serializeWith(Person.serializer, this));
  }

  static Person? fromJson(String jsonString) {
    return serializers.deserializeWith(Person.serializer, json.decode(jsonString));
  }

  static Serializer<Person> get serializer => _$personSerializer;
}
class Gender extends EnumClass {

  static const Gender male = _$male;
  static const Gender female = _$female;

  const Gender._(String name) : super(name);

  static BuiltSet<Gender> get values => _$values;
  static Gender valueOf(String name) => _$valueOf(name); 

  static Serializer<Gender> get serializer => _$genderSerializer;
}