// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_thread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageThread _$MessageThreadFromJson(Map<String, dynamic> json) {
  return _MessageThread.fromJson(json);
}

/// @nodoc
mixin _$MessageThread {
  String get contactName => throw _privateConstructorUsedError;
  List<MessageItem> get messageItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageThreadCopyWith<MessageThread> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageThreadCopyWith<$Res> {
  factory $MessageThreadCopyWith(
          MessageThread value, $Res Function(MessageThread) then) =
      _$MessageThreadCopyWithImpl<$Res>;
  $Res call({String contactName, List<MessageItem> messageItem});
}

/// @nodoc
class _$MessageThreadCopyWithImpl<$Res>
    implements $MessageThreadCopyWith<$Res> {
  _$MessageThreadCopyWithImpl(this._value, this._then);

  final MessageThread _value;
  // ignore: unused_field
  final $Res Function(MessageThread) _then;

  @override
  $Res call({
    Object? contactName = freezed,
    Object? messageItem = freezed,
  }) {
    return _then(_value.copyWith(
      contactName: contactName == freezed
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      messageItem: messageItem == freezed
          ? _value.messageItem
          : messageItem // ignore: cast_nullable_to_non_nullable
              as List<MessageItem>,
    ));
  }
}

/// @nodoc
abstract class _$$_MessageThreadCopyWith<$Res>
    implements $MessageThreadCopyWith<$Res> {
  factory _$$_MessageThreadCopyWith(
          _$_MessageThread value, $Res Function(_$_MessageThread) then) =
      __$$_MessageThreadCopyWithImpl<$Res>;
  @override
  $Res call({String contactName, List<MessageItem> messageItem});
}

/// @nodoc
class __$$_MessageThreadCopyWithImpl<$Res>
    extends _$MessageThreadCopyWithImpl<$Res>
    implements _$$_MessageThreadCopyWith<$Res> {
  __$$_MessageThreadCopyWithImpl(
      _$_MessageThread _value, $Res Function(_$_MessageThread) _then)
      : super(_value, (v) => _then(v as _$_MessageThread));

  @override
  _$_MessageThread get _value => super._value as _$_MessageThread;

  @override
  $Res call({
    Object? contactName = freezed,
    Object? messageItem = freezed,
  }) {
    return _then(_$_MessageThread(
      contactName: contactName == freezed
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      messageItem: messageItem == freezed
          ? _value.messageItem
          : messageItem // ignore: cast_nullable_to_non_nullable
              as List<MessageItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageThread implements _MessageThread {
  _$_MessageThread({required this.contactName, required this.messageItem});

  factory _$_MessageThread.fromJson(Map<String, dynamic> json) =>
      _$$_MessageThreadFromJson(json);

  @override
  final String contactName;
  @override
  final List<MessageItem> messageItem;

  @override
  String toString() {
    return 'MessageThread(contactName: $contactName, messageItem: $messageItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageThread &&
            const DeepCollectionEquality()
                .equals(other.contactName, contactName) &&
            const DeepCollectionEquality()
                .equals(other.messageItem, messageItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contactName),
      const DeepCollectionEquality().hash(messageItem));

  @JsonKey(ignore: true)
  @override
  _$$_MessageThreadCopyWith<_$_MessageThread> get copyWith =>
      __$$_MessageThreadCopyWithImpl<_$_MessageThread>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageThreadToJson(this);
  }
}

abstract class _MessageThread implements MessageThread {
  factory _MessageThread(
      {required final String contactName,
      required final List<MessageItem> messageItem}) = _$_MessageThread;

  factory _MessageThread.fromJson(Map<String, dynamic> json) =
      _$_MessageThread.fromJson;

  @override
  String get contactName => throw _privateConstructorUsedError;
  @override
  List<MessageItem> get messageItem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MessageThreadCopyWith<_$_MessageThread> get copyWith =>
      throw _privateConstructorUsedError;
}
