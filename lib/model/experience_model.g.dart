// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Experience _$ExperienceFromJson(Map<String, dynamic> json) => Experience(
      org: json['org'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      designations: (json['designations'] as List<dynamic>)
          .map((e) => Designation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExperienceToJson(Experience instance) =>
    <String, dynamic>{
      'org': instance.org,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'designations': instance.designations,
    };

Designation _$DesignationFromJson(Map<String, dynamic> json) => Designation(
      designation: json['designation'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
    );

Map<String, dynamic> _$DesignationToJson(Designation instance) =>
    <String, dynamic>{
      'designation': instance.designation,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };
