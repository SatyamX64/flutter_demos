import 'package:json_annotation/json_annotation.dart';
part 'skills.g.dart';

@JsonSerializable()
class Skills {
  int yearsOfExperience;
  List<String> skills;

  Skills(this.yearsOfExperience, this.skills);

  factory Skills.fromJson(Map<String, dynamic> json) =>
      _$SkillsFromJson(json);
  Map<String, dynamic> toJson() => _$SkillsToJson(this);
}
