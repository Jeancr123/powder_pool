import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:powder_pool/models/domain/json.dart';
import 'package:powder_pool/models/domain/uuid.dart';
part 'carpool_model.freezed.dart';
part 'carpool_model.g.dart';

@freezed
class Carpool with _$Carpool {
  const factory Carpool({
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
  }) = _Carpool;

  factory Carpool.fromJson(Json json) => _$CarpoolFromJson(json);
}
