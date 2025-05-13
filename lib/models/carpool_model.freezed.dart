// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carpool_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Carpool _$CarpoolFromJson(Map<String, dynamic> json) {
  return _Carpool.fromJson(json);
}

/// @nodoc
mixin _$Carpool {
  Uuid? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get meetupAddress => throw _privateConstructorUsedError;
  String? get meetupCity => throw _privateConstructorUsedError;
  String? get meetupState => throw _privateConstructorUsedError;
  String? get meetupZipCode => throw _privateConstructorUsedError;
  Uuid? get createdBy => throw _privateConstructorUsedError;
  Uuid? get resortId => throw _privateConstructorUsedError;
  DateTime? get departureDate => throw _privateConstructorUsedError;
  String? get departureTime => throw _privateConstructorUsedError;
  DateTime? get returningDate => throw _privateConstructorUsedError;
  String? get returningTime => throw _privateConstructorUsedError;
  User? get creator => throw _privateConstructorUsedError;
  Resort? get resort => throw _privateConstructorUsedError;
  Conversation? get conversation => throw _privateConstructorUsedError;

  /// Serializes this Carpool to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Carpool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarpoolCopyWith<Carpool> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarpoolCopyWith<$Res> {
  factory $CarpoolCopyWith(Carpool value, $Res Function(Carpool) then) =
      _$CarpoolCopyWithImpl<$Res, Carpool>;
  @useResult
  $Res call({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    String? description,
    String? meetupAddress,
    String? meetupCity,
    String? meetupState,
    String? meetupZipCode,
    Uuid? createdBy,
    Uuid? resortId,
    DateTime? departureDate,
    String? departureTime,
    DateTime? returningDate,
    String? returningTime,
    User? creator,
    Resort? resort,
    Conversation? conversation,
  });

  $UserCopyWith<$Res>? get creator;
  $ResortCopyWith<$Res>? get resort;
  $ConversationCopyWith<$Res>? get conversation;
}

/// @nodoc
class _$CarpoolCopyWithImpl<$Res, $Val extends Carpool>
    implements $CarpoolCopyWith<$Res> {
  _$CarpoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Carpool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? meetupAddress = freezed,
    Object? meetupCity = freezed,
    Object? meetupState = freezed,
    Object? meetupZipCode = freezed,
    Object? createdBy = freezed,
    Object? resortId = freezed,
    Object? departureDate = freezed,
    Object? departureTime = freezed,
    Object? returningDate = freezed,
    Object? returningTime = freezed,
    Object? creator = freezed,
    Object? resort = freezed,
    Object? conversation = freezed,
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
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            meetupAddress:
                freezed == meetupAddress
                    ? _value.meetupAddress
                    : meetupAddress // ignore: cast_nullable_to_non_nullable
                        as String?,
            meetupCity:
                freezed == meetupCity
                    ? _value.meetupCity
                    : meetupCity // ignore: cast_nullable_to_non_nullable
                        as String?,
            meetupState:
                freezed == meetupState
                    ? _value.meetupState
                    : meetupState // ignore: cast_nullable_to_non_nullable
                        as String?,
            meetupZipCode:
                freezed == meetupZipCode
                    ? _value.meetupZipCode
                    : meetupZipCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdBy:
                freezed == createdBy
                    ? _value.createdBy
                    : createdBy // ignore: cast_nullable_to_non_nullable
                        as Uuid?,
            resortId:
                freezed == resortId
                    ? _value.resortId
                    : resortId // ignore: cast_nullable_to_non_nullable
                        as Uuid?,
            departureDate:
                freezed == departureDate
                    ? _value.departureDate
                    : departureDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            departureTime:
                freezed == departureTime
                    ? _value.departureTime
                    : departureTime // ignore: cast_nullable_to_non_nullable
                        as String?,
            returningDate:
                freezed == returningDate
                    ? _value.returningDate
                    : returningDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            returningTime:
                freezed == returningTime
                    ? _value.returningTime
                    : returningTime // ignore: cast_nullable_to_non_nullable
                        as String?,
            creator:
                freezed == creator
                    ? _value.creator
                    : creator // ignore: cast_nullable_to_non_nullable
                        as User?,
            resort:
                freezed == resort
                    ? _value.resort
                    : resort // ignore: cast_nullable_to_non_nullable
                        as Resort?,
            conversation:
                freezed == conversation
                    ? _value.conversation
                    : conversation // ignore: cast_nullable_to_non_nullable
                        as Conversation?,
          )
          as $Val,
    );
  }

  /// Create a copy of Carpool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  /// Create a copy of Carpool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResortCopyWith<$Res>? get resort {
    if (_value.resort == null) {
      return null;
    }

    return $ResortCopyWith<$Res>(_value.resort!, (value) {
      return _then(_value.copyWith(resort: value) as $Val);
    });
  }

  /// Create a copy of Carpool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res>? get conversation {
    if (_value.conversation == null) {
      return null;
    }

    return $ConversationCopyWith<$Res>(_value.conversation!, (value) {
      return _then(_value.copyWith(conversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarpoolImplCopyWith<$Res> implements $CarpoolCopyWith<$Res> {
  factory _$$CarpoolImplCopyWith(
    _$CarpoolImpl value,
    $Res Function(_$CarpoolImpl) then,
  ) = __$$CarpoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    String? description,
    String? meetupAddress,
    String? meetupCity,
    String? meetupState,
    String? meetupZipCode,
    Uuid? createdBy,
    Uuid? resortId,
    DateTime? departureDate,
    String? departureTime,
    DateTime? returningDate,
    String? returningTime,
    User? creator,
    Resort? resort,
    Conversation? conversation,
  });

  @override
  $UserCopyWith<$Res>? get creator;
  @override
  $ResortCopyWith<$Res>? get resort;
  @override
  $ConversationCopyWith<$Res>? get conversation;
}

/// @nodoc
class __$$CarpoolImplCopyWithImpl<$Res>
    extends _$CarpoolCopyWithImpl<$Res, _$CarpoolImpl>
    implements _$$CarpoolImplCopyWith<$Res> {
  __$$CarpoolImplCopyWithImpl(
    _$CarpoolImpl _value,
    $Res Function(_$CarpoolImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Carpool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? meetupAddress = freezed,
    Object? meetupCity = freezed,
    Object? meetupState = freezed,
    Object? meetupZipCode = freezed,
    Object? createdBy = freezed,
    Object? resortId = freezed,
    Object? departureDate = freezed,
    Object? departureTime = freezed,
    Object? returningDate = freezed,
    Object? returningTime = freezed,
    Object? creator = freezed,
    Object? resort = freezed,
    Object? conversation = freezed,
  }) {
    return _then(
      _$CarpoolImpl(
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
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        meetupAddress:
            freezed == meetupAddress
                ? _value.meetupAddress
                : meetupAddress // ignore: cast_nullable_to_non_nullable
                    as String?,
        meetupCity:
            freezed == meetupCity
                ? _value.meetupCity
                : meetupCity // ignore: cast_nullable_to_non_nullable
                    as String?,
        meetupState:
            freezed == meetupState
                ? _value.meetupState
                : meetupState // ignore: cast_nullable_to_non_nullable
                    as String?,
        meetupZipCode:
            freezed == meetupZipCode
                ? _value.meetupZipCode
                : meetupZipCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdBy:
            freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                    as Uuid?,
        resortId:
            freezed == resortId
                ? _value.resortId
                : resortId // ignore: cast_nullable_to_non_nullable
                    as Uuid?,
        departureDate:
            freezed == departureDate
                ? _value.departureDate
                : departureDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        departureTime:
            freezed == departureTime
                ? _value.departureTime
                : departureTime // ignore: cast_nullable_to_non_nullable
                    as String?,
        returningDate:
            freezed == returningDate
                ? _value.returningDate
                : returningDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        returningTime:
            freezed == returningTime
                ? _value.returningTime
                : returningTime // ignore: cast_nullable_to_non_nullable
                    as String?,
        creator:
            freezed == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                    as User?,
        resort:
            freezed == resort
                ? _value.resort
                : resort // ignore: cast_nullable_to_non_nullable
                    as Resort?,
        conversation:
            freezed == conversation
                ? _value.conversation
                : conversation // ignore: cast_nullable_to_non_nullable
                    as Conversation?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CarpoolImpl implements _Carpool {
  const _$CarpoolImpl({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.description,
    this.meetupAddress,
    this.meetupCity,
    this.meetupState,
    this.meetupZipCode,
    this.createdBy,
    this.resortId,
    this.departureDate,
    this.departureTime,
    this.returningDate,
    this.returningTime,
    this.creator,
    this.resort,
    this.conversation,
  });

  factory _$CarpoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarpoolImplFromJson(json);

  @override
  final Uuid? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? meetupAddress;
  @override
  final String? meetupCity;
  @override
  final String? meetupState;
  @override
  final String? meetupZipCode;
  @override
  final Uuid? createdBy;
  @override
  final Uuid? resortId;
  @override
  final DateTime? departureDate;
  @override
  final String? departureTime;
  @override
  final DateTime? returningDate;
  @override
  final String? returningTime;
  @override
  final User? creator;
  @override
  final Resort? resort;
  @override
  final Conversation? conversation;

  @override
  String toString() {
    return 'Carpool(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, description: $description, meetupAddress: $meetupAddress, meetupCity: $meetupCity, meetupState: $meetupState, meetupZipCode: $meetupZipCode, createdBy: $createdBy, resortId: $resortId, departureDate: $departureDate, departureTime: $departureTime, returningDate: $returningDate, returningTime: $returningTime, creator: $creator, resort: $resort, conversation: $conversation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarpoolImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.meetupAddress, meetupAddress) ||
                other.meetupAddress == meetupAddress) &&
            (identical(other.meetupCity, meetupCity) ||
                other.meetupCity == meetupCity) &&
            (identical(other.meetupState, meetupState) ||
                other.meetupState == meetupState) &&
            (identical(other.meetupZipCode, meetupZipCode) ||
                other.meetupZipCode == meetupZipCode) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.resortId, resortId) ||
                other.resortId == resortId) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.returningDate, returningDate) ||
                other.returningDate == returningDate) &&
            (identical(other.returningTime, returningTime) ||
                other.returningTime == returningTime) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.resort, resort) || other.resort == resort) &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    updatedAt,
    name,
    description,
    meetupAddress,
    meetupCity,
    meetupState,
    meetupZipCode,
    createdBy,
    resortId,
    departureDate,
    departureTime,
    returningDate,
    returningTime,
    creator,
    resort,
    conversation,
  );

  /// Create a copy of Carpool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarpoolImplCopyWith<_$CarpoolImpl> get copyWith =>
      __$$CarpoolImplCopyWithImpl<_$CarpoolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarpoolImplToJson(this);
  }
}

abstract class _Carpool implements Carpool {
  const factory _Carpool({
    final Uuid? id,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final String? name,
    final String? description,
    final String? meetupAddress,
    final String? meetupCity,
    final String? meetupState,
    final String? meetupZipCode,
    final Uuid? createdBy,
    final Uuid? resortId,
    final DateTime? departureDate,
    final String? departureTime,
    final DateTime? returningDate,
    final String? returningTime,
    final User? creator,
    final Resort? resort,
    final Conversation? conversation,
  }) = _$CarpoolImpl;

  factory _Carpool.fromJson(Map<String, dynamic> json) = _$CarpoolImpl.fromJson;

  @override
  Uuid? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get meetupAddress;
  @override
  String? get meetupCity;
  @override
  String? get meetupState;
  @override
  String? get meetupZipCode;
  @override
  Uuid? get createdBy;
  @override
  Uuid? get resortId;
  @override
  DateTime? get departureDate;
  @override
  String? get departureTime;
  @override
  DateTime? get returningDate;
  @override
  String? get returningTime;
  @override
  User? get creator;
  @override
  Resort? get resort;
  @override
  Conversation? get conversation;

  /// Create a copy of Carpool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarpoolImplCopyWith<_$CarpoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
