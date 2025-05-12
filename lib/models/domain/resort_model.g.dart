// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resort_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResortImpl _$$ResortImplFromJson(Map<String, dynamic> json) => _$ResortImpl(
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
  address: json['address'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
  zipCode: json['zipCode'] as String?,
);

Map<String, dynamic> _$$ResortImplToJson(_$ResortImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
    };
