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
  imageUrl: json['imageUrl'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$$ResortImplToJson(_$ResortImpl instance) =>
    <String, dynamic>{
      if (instance.id?.toJson() case final value?) 'id': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'createdAt': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updatedAt': value,
      if (instance.name case final value?) 'name': value,
      if (instance.address case final value?) 'address': value,
      if (instance.city case final value?) 'city': value,
      if (instance.state case final value?) 'state': value,
      if (instance.zipCode case final value?) 'zipCode': value,
      if (instance.imageUrl case final value?) 'imageUrl': value,
      if (instance.description case final value?) 'description': value,
    };
