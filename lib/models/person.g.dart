// GENERATED CODE - DO NOT MODIFY BY HAND

part of person;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Gender _$male = const Gender._('male');
const Gender _$female = const Gender._('female');

Gender _$valueOf(String name) {
  switch (name) {
    case 'male':
      return _$male;
    case 'female':
      return _$female;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Gender> _$values = new BuiltSet<Gender>(const <Gender>[
  _$male,
  _$female,
]);

Serializer<Person> _$personSerializer = new _$PersonSerializer();
Serializer<Gender> _$genderSerializer = new _$GenderSerializer();

class _$PersonSerializer implements StructuredSerializer<Person> {
  @override
  final Iterable<Type> types = const [Person, _$Person];
  @override
  final String wireName = 'Person';

  @override
  Iterable<Object?> serialize(Serializers serializers, Person object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(Gender)),
      'skills',
      serializers.serialize(object.skills,
          specifiedType: const FullType(List, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  Person deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(Gender)) as Gender;
          break;
        case 'skills':
          result.skills = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
      }
    }

    return result.build();
  }
}

class _$GenderSerializer implements PrimitiveSerializer<Gender> {
  @override
  final Iterable<Type> types = const <Type>[Gender];
  @override
  final String wireName = 'Gender';

  @override
  Object serialize(Serializers serializers, Gender object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Gender deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Gender.valueOf(serialized as String);
}

class _$Person extends Person {
  @override
  final int id;
  @override
  final String name;
  @override
  final Gender gender;
  @override
  final List<String> skills;

  factory _$Person([void Function(PersonBuilder)? updates]) =>
      (new PersonBuilder()..update(updates)).build();

  _$Person._(
      {required this.id,
      required this.name,
      required this.gender,
      required this.skills})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Person', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Person', 'name');
    BuiltValueNullFieldError.checkNotNull(gender, 'Person', 'gender');
    BuiltValueNullFieldError.checkNotNull(skills, 'Person', 'skills');
  }

  @override
  Person rebuild(void Function(PersonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonBuilder toBuilder() => new PersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        id == other.id &&
        name == other.name &&
        gender == other.gender &&
        skills == other.skills;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), gender.hashCode),
        skills.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Person')
          ..add('id', id)
          ..add('name', name)
          ..add('gender', gender)
          ..add('skills', skills))
        .toString();
  }
}

class PersonBuilder implements Builder<Person, PersonBuilder> {
  _$Person? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gender? _gender;
  Gender? get gender => _$this._gender;
  set gender(Gender? gender) => _$this._gender = gender;

  List<String>? _skills;
  List<String>? get skills => _$this._skills;
  set skills(List<String>? skills) => _$this._skills = skills;

  PersonBuilder();

  PersonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _gender = $v.gender;
      _skills = $v.skills;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Person other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Person;
  }

  @override
  void update(void Function(PersonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Person build() {
    final _$result = _$v ??
        new _$Person._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Person', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, 'Person', 'name'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, 'Person', 'gender'),
            skills: BuiltValueNullFieldError.checkNotNull(
                skills, 'Person', 'skills'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
