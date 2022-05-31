part '../models/message_item.dart';

class MessageThread {
  final String contactName;
  final List<MessageItem> messageItem;

  MessageThread({
    required this.contactName,
    required this.messageItem,
  });
}
