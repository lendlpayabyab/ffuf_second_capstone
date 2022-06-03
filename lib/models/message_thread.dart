import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/message_item.dart';

part 'message_thread.freezed.dart';
part 'message_thread.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class MessageThread with _$MessageThread {
  factory MessageThread({
    required String contactName,
    required List<MessageItem> messageItem,
}) = _MessageThread;

  factory MessageThread.fromJson(Map<String, Object?> json) => _$MessageThreadFromJson(json);
}
