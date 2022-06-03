// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      emailAddress: json['emailAddress'] as String,
      password: json['password'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      userMessageThreads: (json['userMessageThreads'] as List<dynamic>?)
          ?.map((e) => MessageThread.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailAddress': instance.emailAddress,
      'password': instance.password,
      'profilePictureUrl': instance.profilePictureUrl,
      'userMessageThreads': instance.userMessageThreads,
    };
