// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carpool_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarpoolImpl _$$CarpoolImplFromJson(Map<String, dynamic> json) =>
    _$CarpoolImpl(
      id: json['id'] == null ? null : Uuid.fromJson(json['id'] as String),
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
      updatedAt:
          json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
      name: json['name'] as String?,
      description: json['description'] as String?,
      meetupAddress: json['meetupAddress'] as String?,
      meetupCity: json['meetupCity'] as String?,
      meetupState: json['meetupState'] as String?,
      meetupZipCode: json['meetupZipCode'] as String?,
      createdBy:
          json['createdBy'] == null
              ? null
              : Uuid.fromJson(json['createdBy'] as String),
      resortId:
          json['resortId'] == null
              ? null
              : Uuid.fromJson(json['resortId'] as String),
      departureDate:
          json['departureDate'] == null
              ? null
              : DateTime.parse(json['departureDate'] as String),
      departureTime: json['departureTime'] as String?,
      returningDate:
          json['returningDate'] == null
              ? null
              : DateTime.parse(json['returningDate'] as String),
      returningTime: json['returningTime'] as String?,
    );

Map<String, dynamic> _$$CarpoolImplToJson(_$CarpoolImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'name': instance.name,
      'description': instance.description,
      'meetupAddress': instance.meetupAddress,
      'meetupCity': instance.meetupCity,
      'meetupState': instance.meetupState,
      'meetupZipCode': instance.meetupZipCode,
      'createdBy': instance.createdBy,
      'resortId': instance.resortId,
      'departureDate': instance.departureDate?.toIso8601String(),
      'departureTime': instance.departureTime,
      'returningDate': instance.returningDate?.toIso8601String(),
      'returningTime': instance.returningTime,
    };
