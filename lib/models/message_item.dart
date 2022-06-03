import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_item.freezed.dart';
part 'message_item.g.dart';

enum Sender {
  me,
  you,
}

@Freezed()
class MessageItem with _$MessageItem {

  factory MessageItem({
    required String message,
    required DateTime timeStamp,
    required Sender sender,
}) = _MessageItem;

  factory MessageItem.fromJson(Map<String, Object?> json) => _$MessageItemFromJson(json);
}
