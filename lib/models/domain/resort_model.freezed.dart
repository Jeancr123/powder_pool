// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resort_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Resort _$ResortFromJson(Map<String, dynamic> json) {
  return _Resort.fromJson(json);
}

/// @nodoc
mixin _$Resort {
  Uuid? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;

  /// Serializes this Resort to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Resort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResortCopyWith<Resort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResortCopyWith<$Res> {
  factory $ResortCopyWith(Resort value, $Res Function(Resort) then) =
      _$ResortCopyWithImpl<$Res, Resort>;
  @useResult
  $Res call({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    String? address,
    String? city,
    String? state,
    String? zipCode,
  });
}

/// @nodoc
class _$ResortCopyWithImpl<$Res, $Val extends Resort>
    implements $ResortCopyWith<$Res> {
  _$ResortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Resort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
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
            address:
                freezed == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String?,
            city:
                freezed == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String?,
            state:
                freezed == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String?,
            zipCode:
                freezed == zipCode
                    ? _value.zipCode
                    : zipCode // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResortImplCopyWith<$Res> implements $ResortCopyWith<$Res> {
  factory _$$ResortImplCopyWith(
    _$ResortImpl value,
    $Res Function(_$ResortImpl) then,
  ) = __$$ResortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    String? address,
    String? city,
    String? state,
    String? zipCode,
  });
}

/// @nodoc
class __$$ResortImplCopyWithImpl<$Res>
    extends _$ResortCopyWithImpl<$Res, _$ResortImpl>
    implements _$$ResortImplCopyWith<$Res> {
  __$$ResortImplCopyWithImpl(
    _$ResortImpl _value,
    $Res Function(_$ResortImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Resort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(
      _$ResortImpl(
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
        address:
            freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String?,
        city:
            freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String?,
        state:
            freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String?,
        zipCode:
            freezed == zipCode
                ? _value.zipCode
                : zipCode // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResortImpl implements _Resort {
  const _$ResortImpl({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.address,
    this.city,
    this.state,
    this.zipCode,
  });

  factory _$ResortImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResortImplFromJson(json);

  @override
  final Uuid? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zipCode;

  @override
  String toString() {
    return 'Resort(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, address: $address, city: $city, state: $state, zipCode: $zipCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResortImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    updatedAt,
    name,
    address,
    city,
    state,
    zipCode,
  );

  /// Create a copy of Resort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResortImplCopyWith<_$ResortImpl> get copyWith =>
      __$$ResortImplCopyWithImpl<_$ResortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResortImplToJson(this);
  }
}

abstract class _Resort implements Resort {
  const factory _Resort({
    final Uuid? id,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final String? name,
    final String? address,
    final String? city,
    final String? state,
    final String? zipCode,
  }) = _$ResortImpl;

  factory _Resort.fromJson(Map<String, dynamic> json) = _$ResortImpl.fromJson;

  @override
  Uuid? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zipCode;

  /// Create a copy of Resort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResortImplCopyWith<_$ResortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
