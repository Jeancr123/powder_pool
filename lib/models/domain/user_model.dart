import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:powder_pool/models/domain/json.dart';
import 'package:powder_pool/models/domain/uuid.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? zipCode,
    String? aboutYou,
  }) = _User;

  factory User.fromJson(Json json) => _$UserFromJson(json);
}
