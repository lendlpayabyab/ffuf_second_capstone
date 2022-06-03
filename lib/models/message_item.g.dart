// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageItem _$$_MessageItemFromJson(Map<String, dynamic> json) =>
    _$_MessageItem(
      message: json['message'] as String,
      timeStamp: DateTime.parse(json['timeStamp'] as String),
      sender: $enumDecode(_$SenderEnumMap, json['sender']),
    );

Map<String, dynamic> _$$_MessageItemToJson(_$_MessageItem instance) =>
    <String, dynamic>{
      'message': instance.message,
      'timeStamp': instance.timeStamp.toIso8601String(),
      'sender': _$SenderEnumMap[instance.sender],
    };

const _$SenderEnumMap = {
  Sender.me: 'me',
  Sender.you: 'you',
};
