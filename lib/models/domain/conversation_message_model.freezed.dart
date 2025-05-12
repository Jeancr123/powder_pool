// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConversationMessage _$ConversationMessageFromJson(Map<String, dynamic> json) {
  return _ConversationMessage.fromJson(json);
}

/// @nodoc
mixin _$ConversationMessage {
  Uuid? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Uuid? get conversationId => throw _privateConstructorUsedError;
  Uuid? get userId => throw _privateConstructorUsedError;
  String? get messageText => throw _privateConstructorUsedError;

  /// Serializes this ConversationMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationMessageCopyWith<ConversationMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationMessageCopyWith<$Res> {
  factory $ConversationMessageCopyWith(
    ConversationMessage value,
    $Res Function(ConversationMessage) then,
  ) = _$ConversationMessageCopyWithImpl<$Res, ConversationMessage>;
  @useResult
  $Res call({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Uuid? conversationId,
    Uuid? userId,
    String? messageText,
  });
}

/// @nodoc
class _$ConversationMessageCopyWithImpl<$Res, $Val extends ConversationMessage>
    implements $ConversationMessageCopyWith<$Res> {
  _$ConversationMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? conversationId = freezed,
    Object? userId = freezed,
    Object? messageText = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as Uuid?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            conversationId:
                freezed == conversationId
                    ? _value.conversationId
                    : conversationId // ignore: cast_nullable_to_non_nullable
                        as Uuid?,
            userId:
                freezed == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as Uuid?,
            messageText:
                freezed == messageText
                    ? _value.messageText
                    : messageText // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConversationMessageImplCopyWith<$Res>
    implements $ConversationMessageCopyWith<$Res> {
  factory _$$ConversationMessageImplCopyWith(
    _$ConversationMessageImpl value,
    $Res Function(_$ConversationMessageImpl) then,
  ) = __$$ConversationMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Uuid? conversationId,
    Uuid? userId,
    String? messageText,
  });
}

/// @nodoc
class __$$ConversationMessageImplCopyWithImpl<$Res>
    extends _$ConversationMessageCopyWithImpl<$Res, _$ConversationMessageImpl>
    implements _$$ConversationMessageImplCopyWith<$Res> {
  __$$ConversationMessageImplCopyWithImpl(
    _$ConversationMessageImpl _value,
    $Res Function(_$ConversationMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConversationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? conversationId = freezed,
    Object? userId = freezed,
    Object? messageText = freezed,
  }) {
    return _then(
      _$ConversationMessageImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as Uuid?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        conversationId:
            freezed == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as Uuid?,
        userId:
            freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as Uuid?,
        messageText:
            freezed == messageText
                ? _value.messageText
                : messageText // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationMessageImpl implements _ConversationMessage {
  const _$ConversationMessageImpl({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.conversationId,
    this.userId,
    this.messageText,
  });

  factory _$ConversationMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationMessageImplFromJson(json);

  @override
  final Uuid? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Uuid? conversationId;
  @override
  final Uuid? userId;
  @override
  final String? messageText;

  @override
  String toString() {
    return 'ConversationMessage(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, conversationId: $conversationId, userId: $userId, messageText: $messageText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    updatedAt,
    conversationId,
    userId,
    messageText,
  );

  /// Create a copy of ConversationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationMessageImplCopyWith<_$ConversationMessageImpl> get copyWith =>
      __$$ConversationMessageImplCopyWithImpl<_$ConversationMessageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationMessageImplToJson(this);
  }
}

abstract class _ConversationMessage implements ConversationMessage {
  const factory _ConversationMessage({
    final Uuid? id,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Uuid? conversationId,
    final Uuid? userId,
    final String? messageText,
  }) = _$ConversationMessageImpl;

  factory _ConversationMessage.fromJson(Map<String, dynamic> json) =
      _$ConversationMessageImpl.fromJson;

  @override
  Uuid? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Uuid? get conversationId;
  @override
  Uuid? get userId;
  @override
  String? get messageText;

  /// Create a copy of ConversationMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationMessageImplCopyWith<_$ConversationMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
