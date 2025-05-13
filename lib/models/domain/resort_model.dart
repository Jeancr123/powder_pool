import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:powder_pool/models/domain/json.dart';
import 'package:powder_pool/models/domain/uuid.dart';
part 'resort_model.freezed.dart';
part 'resort_model.g.dart';

@freezed
class Resort with _$Resort {
  const factory Resort({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    String? address,
    String? city,
    String? state,
    String? zipCode,
    String? imageUrl,
    String? description,
  }) = _Resort;

  factory Resort.fromJson(Json json) => _$ResortFromJson(json);
}
