// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get firstName => throw _privateConstructorUsedError;
  set firstName(String value) => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  set lastName(String value) => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  set emailAddress(String value) => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  set password(String value) => throw _privateConstructorUsedError;
  String get profilePictureUrl => throw _privateConstructorUsedError;
  set profilePictureUrl(String value) => throw _privateConstructorUsedError;
  List<MessageThread>? get userMessageThreads =>
      throw _privateConstructorUsedError;
  set userMessageThreads(List<MessageThread>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String emailAddress,
      String password,
      String profilePictureUrl,
      List<MessageThread>? userMessageThreads});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? profilePictureUrl = freezed,
    Object? userMessageThreads = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: profilePictureUrl == freezed
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userMessageThreads: userMessageThreads == freezed
          ? _value.userMessageThreads
          : userMessageThreads // ignore: cast_nullable_to_non_nullable
              as List<MessageThread>?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$_UserProfileCopyWith(
          _$_UserProfile value, $Res Function(_$_UserProfile) then) =
      __$$_UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String emailAddress,
      String password,
      String profilePictureUrl,
      List<MessageThread>? userMessageThreads});
}

/// @nodoc
class __$$_UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$$_UserProfileCopyWith<$Res> {
  __$$_UserProfileCopyWithImpl(
      _$_UserProfile _value, $Res Function(_$_UserProfile) _then)
      : super(_value, (v) => _then(v as _$_UserProfile));

  @override
  _$_UserProfile get _value => super._value as _$_UserProfile;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? profilePictureUrl = freezed,
    Object? userMessageThreads = freezed,
  }) {
    return _then(_$_UserProfile(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: profilePictureUrl == freezed
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userMessageThreads: userMessageThreads == freezed
          ? _value.userMessageThreads
          : userMessageThreads // ignore: cast_nullable_to_non_nullable
              as List<MessageThread>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfile implements _UserProfile {
  _$_UserProfile(
      {required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.password,
      required this.profilePictureUrl,
      this.userMessageThreads});

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileFromJson(json);

  @override
  String firstName;
  @override
  String lastName;
  @override
  String emailAddress;
  @override
  String password;
  @override
  String profilePictureUrl;
  @override
  List<MessageThread>? userMessageThreads;

  @override
  String toString() {
    return 'UserProfile(firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, password: $password, profilePictureUrl: $profilePictureUrl, userMessageThreads: $userMessageThreads)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_UserProfileCopyWith<_$_UserProfile> get copyWith =>
      __$$_UserProfileCopyWithImpl<_$_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileToJson(this);
  }
}

abstract class _UserProfile implements UserProfile {
  factory _UserProfile(
      {required String firstName,
      required String lastName,
      required String emailAddress,
      required String password,
      required String profilePictureUrl,
      List<MessageThread>? userMessageThreads}) = _$_UserProfile;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get emailAddress => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get profilePictureUrl => throw _privateConstructorUsedError;
  @override
  List<MessageThread>? get userMessageThreads =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileCopyWith<_$_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
