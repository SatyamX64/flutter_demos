import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  int get id;
  String get name; 
  Person._();
  factory Person([void Function(PersonBuilder) updates]) = _$Person;
}
