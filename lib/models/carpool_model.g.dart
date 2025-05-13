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
      creator:
          json['creator'] == null
              ? null
              : User.fromJson(json['creator'] as Map<String, dynamic>),
      resort:
          json['resort'] == null
              ? null
              : Resort.fromJson(json['resort'] as Map<String, dynamic>),
      conversation:
          json['conversation'] == null
              ? null
              : Conversation.fromJson(
                json['conversation'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$CarpoolImplToJson(
  _$CarpoolImpl instance,
) => <String, dynamic>{
  if (instance.id?.toJson() case final value?) 'id': value,
  if (instance.createdAt?.toIso8601String() case final value?)
    'createdAt': value,
  if (instance.updatedAt?.toIso8601String() case final value?)
    'updatedAt': value,
  if (instance.name case final value?) 'name': value,
  if (instance.description case final value?) 'description': value,
  if (instance.meetupAddress case final value?) 'meetupAddress': value,
  if (instance.meetupCity case final value?) 'meetupCity': value,
  if (instance.meetupState case final value?) 'meetupState': value,
  if (instance.meetupZipCode case final value?) 'meetupZipCode': value,
  if (instance.createdBy?.toJson() case final value?) 'createdBy': value,
  if (instance.resortId?.toJson() case final value?) 'resortId': value,
  if (instance.departureDate?.toIso8601String() case final value?)
    'departureDate': value,
  if (instance.departureTime case final value?) 'departureTime': value,
  if (instance.returningDate?.toIso8601String() case final value?)
    'returningDate': value,
  if (instance.returningTime case final value?) 'returningTime': value,
  if (instance.creator?.toJson() case final value?) 'creator': value,
  if (instance.resort?.toJson() case final value?) 'resort': value,
  if (instance.conversation?.toJson() case final value?) 'conversation': value,
};
