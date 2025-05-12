import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:powder_pool/models/domain/json.dart';
import 'package:powder_pool/models/domain/uuid.dart';
part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Uuid? carpoolId,
  }) = _Conversation;

  factory Conversation.fromJson(Json json) => _$ConversationFromJson(json);
}
