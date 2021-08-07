import 'package:flutter_demos/models/address.dart';
import 'package:flutter_demos/models/skills.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)

/// explicitToJson lets us call the serialization method on all memebers
/// So we will now have to make address, skills serializable
/// without this we will get 'instance of address' rather than the address json 
class User {
  User(this.name, this.address, this.skills);

  String name;
  Address address;
  Skills skills;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
