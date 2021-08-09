import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  int get id;
  String get name; 
  Gender get gender;
  Person._();
  factory Person([void Function(PersonBuilder) updates]) = _$Person;
}

class Gender extends EnumClass {

  static const Gender male = _$male;
  static const Gender female = _$female;

  const Gender._(String name) : super(name);

  static BuiltSet<Gender> get values => _$values;
  static Gender valueOf(String name) => _$valueOf(name); 
}