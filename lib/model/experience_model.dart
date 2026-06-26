import 'package:json_annotation/json_annotation.dart';

part 'experience_model.g.dart';

@JsonSerializable()
class Experience {
  @JsonKey(name: "org")
  String org;
  @JsonKey(name: "start_date")
  String startDate;
  @JsonKey(name: "end_date")
  String endDate;
  @JsonKey(name: "designations")
  List<Designation> designations;

  Experience({
    required this.org,
    required this.startDate,
    required this.endDate,
    required this.designations,
  });

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}

@JsonSerializable()
class Designation {
  @JsonKey(name: "designation")
  String designation;
  @JsonKey(name: "start_date")
  String startDate;
  @JsonKey(name: "end_date")
  String endDate;

  Designation({
    required this.designation,
    required this.startDate,
    required this.endDate,
  });

  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);

  Map<String, dynamic> toJson() => _$DesignationToJson(this);
}
