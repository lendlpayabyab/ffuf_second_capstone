part of '../models/message_thread.dart';

enum Sender {
  me,
  you,
}

class MessageItem {
  final String message;
  final DateTime timeStamp;
  final Sender sender;

  MessageItem({
    required this.message,
    required this.sender,
    required this.timeStamp,
  });
}
