// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationImpl _$$ConversationImplFromJson(Map<String, dynamic> json) =>
    _$ConversationImpl(
      id: json['id'] == null ? null : Uuid.fromJson(json['id'] as String),
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
      updatedAt:
          json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
      carpoolId:
          json['carpoolId'] == null
              ? null
              : Uuid.fromJson(json['carpoolId'] as String),
      carpool:
          json['carpool'] == null
              ? null
              : Carpool.fromJson(json['carpool'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConversationImplToJson(_$ConversationImpl instance) =>
    <String, dynamic>{
      if (instance.id?.toJson() case final value?) 'id': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'createdAt': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updatedAt': value,
      if (instance.carpoolId?.toJson() case final value?) 'carpoolId': value,
      if (instance.carpool?.toJson() case final value?) 'carpool': value,
    };
