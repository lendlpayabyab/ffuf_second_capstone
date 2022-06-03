// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageThread _$$_MessageThreadFromJson(Map<String, dynamic> json) =>
    _$_MessageThread(
      contactName: json['contactName'] as String,
      messageItem: (json['messageItem'] as List<dynamic>)
          .map((e) => MessageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MessageThreadToJson(_$_MessageThread instance) =>
    <String, dynamic>{
      'contactName': instance.contactName,
      'messageItem': instance.messageItem,
    };
