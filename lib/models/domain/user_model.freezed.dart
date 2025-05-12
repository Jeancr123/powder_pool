// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  Uuid? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get aboutYou => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? zipCode,
    String? aboutYou,
  });
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? zipCode = freezed,
    Object? aboutYou = freezed,
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
            firstName:
                freezed == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String?,
            lastName:
                freezed == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String?,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            password:
                freezed == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String?,
            zipCode:
                freezed == zipCode
                    ? _value.zipCode
                    : zipCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            aboutYou:
                freezed == aboutYou
                    ? _value.aboutYou
                    : aboutYou // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? zipCode,
    String? aboutYou,
  });
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? zipCode = freezed,
    Object? aboutYou = freezed,
  }) {
    return _then(
      _$UserImpl(
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
        firstName:
            freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String?,
        lastName:
            freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String?,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        password:
            freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String?,
        zipCode:
            freezed == zipCode
                ? _value.zipCode
                : zipCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        aboutYou:
            freezed == aboutYou
                ? _value.aboutYou
                : aboutYou // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.zipCode,
    this.aboutYou,
  });

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final Uuid? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? zipCode;
  @override
  final String? aboutYou;

  @override
  String toString() {
    return 'User(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, firstName: $firstName, lastName: $lastName, email: $email, password: $password, zipCode: $zipCode, aboutYou: $aboutYou)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.aboutYou, aboutYou) ||
                other.aboutYou == aboutYou));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    updatedAt,
    firstName,
    lastName,
    email,
    password,
    zipCode,
    aboutYou,
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    final Uuid? id,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final String? firstName,
    final String? lastName,
    final String? email,
    final String? password,
    final String? zipCode,
    final String? aboutYou,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  Uuid? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get zipCode;
  @override
  String? get aboutYou;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
