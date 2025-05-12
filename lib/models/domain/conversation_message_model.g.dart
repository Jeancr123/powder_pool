// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationMessageImpl _$$ConversationMessageImplFromJson(
  Map<String, dynamic> json,
) => _$ConversationMessageImpl(
  id: json['id'] == null ? null : Uuid.fromJson(json['id'] as String),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
  conversationId:
      json['conversationId'] == null
          ? null
          : Uuid.fromJson(json['conversationId'] as String),
  userId:
      json['userId'] == null ? null : Uuid.fromJson(json['userId'] as String),
  messageText: json['messageText'] as String?,
);

Map<String, dynamic> _$$ConversationMessageImplToJson(
  _$ConversationMessageImpl instance,
) => <String, dynamic>{
  if (instance.id?.toJson() case final value?) 'id': value,
  if (instance.createdAt?.toIso8601String() case final value?)
    'createdAt': value,
  if (instance.updatedAt?.toIso8601String() case final value?)
    'updatedAt': value,
  if (instance.conversationId?.toJson() case final value?)
    'conversationId': value,
  if (instance.userId?.toJson() case final value?) 'userId': value,
  if (instance.messageText case final value?) 'messageText': value,
};
