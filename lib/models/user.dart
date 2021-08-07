import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'user.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
/// fieldName changes the typing style of generated maps (eg : snake, pascal, camelcase, kebab etc)
@JsonSerializable(fieldRename: FieldRename.kebab)
class User {
  User(this.name, this.email, this.isAdult, this.id,
      this.registrationDateMillis,{this.verificationCode = "123"});

  String name;
  String email;

  /// Tell json_serializable to use "defaultValue" if the JSON doesn't
  /// contain this key or if the value is `null`.
  @JsonKey(defaultValue: false)
  final bool isAdult;

  /// When `true` tell json_serializable that JSON must contain the key,
  /// If the key doesn't exist, an exception is thrown.
  @JsonKey(required: true)
  final String id;

  /// When `true` tell json_serializable that generated code should
  /// ignore this field completely.
  /// so it either need to be nullable now or carry a default value
  @JsonKey(ignore: true)
  final String verificationCode;

  /// Tell json_serializable that "registration_date_millis" should be
  /// mapped to this property.
  @JsonKey(name: 'registration_date_millis')
  final int registrationDateMillis;


  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
