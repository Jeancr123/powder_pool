import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:powder_pool/models/domain/json.dart';
import 'package:powder_pool/models/domain/uuid.dart';
part 'conversation_message_model.freezed.dart';
part 'conversation_message_model.g.dart';

@freezed
class ConversationMessage with _$ConversationMessage {
  const factory ConversationMessage({
    Uuid? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Uuid? conversationId,
    Uuid? userId,
    String? messageText,
  }) = _ConversationMessage;

  factory ConversationMessage.fromJson(Json json) =>
      _$ConversationMessageFromJson(json);
}
