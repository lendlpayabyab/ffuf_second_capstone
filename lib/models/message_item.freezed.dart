// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageItem _$MessageItemFromJson(Map<String, dynamic> json) {
  return _MessageItem.fromJson(json);
}

/// @nodoc
mixin _$MessageItem {
  String get message => throw _privateConstructorUsedError;
  DateTime get timeStamp => throw _privateConstructorUsedError;
  Sender get sender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageItemCopyWith<MessageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageItemCopyWith<$Res> {
  factory $MessageItemCopyWith(
          MessageItem value, $Res Function(MessageItem) then) =
      _$MessageItemCopyWithImpl<$Res>;
  $Res call({String message, DateTime timeStamp, Sender sender});
}

/// @nodoc
class _$MessageItemCopyWithImpl<$Res> implements $MessageItemCopyWith<$Res> {
  _$MessageItemCopyWithImpl(this._value, this._then);

  final MessageItem _value;
  // ignore: unused_field
  final $Res Function(MessageItem) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? timeStamp = freezed,
    Object? sender = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
    ));
  }
}

/// @nodoc
abstract class _$$_MessageItemCopyWith<$Res>
    implements $MessageItemCopyWith<$Res> {
  factory _$$_MessageItemCopyWith(
          _$_MessageItem value, $Res Function(_$_MessageItem) then) =
      __$$_MessageItemCopyWithImpl<$Res>;
  @override
  $Res call({String message, DateTime timeStamp, Sender sender});
}

/// @nodoc
class __$$_MessageItemCopyWithImpl<$Res> extends _$MessageItemCopyWithImpl<$Res>
    implements _$$_MessageItemCopyWith<$Res> {
  __$$_MessageItemCopyWithImpl(
      _$_MessageItem _value, $Res Function(_$_MessageItem) _then)
      : super(_value, (v) => _then(v as _$_MessageItem));

  @override
  _$_MessageItem get _value => super._value as _$_MessageItem;

  @override
  $Res call({
    Object? message = freezed,
    Object? timeStamp = freezed,
    Object? sender = freezed,
  }) {
    return _then(_$_MessageItem(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageItem implements _MessageItem {
  _$_MessageItem(
      {required this.message, required this.timeStamp, required this.sender});

  factory _$_MessageItem.fromJson(Map<String, dynamic> json) =>
      _$$_MessageItemFromJson(json);

  @override
  final String message;
  @override
  final DateTime timeStamp;
  @override
  final Sender sender;

  @override
  String toString() {
    return 'MessageItem(message: $message, timeStamp: $timeStamp, sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageItem &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.timeStamp, timeStamp) &&
            const DeepCollectionEquality().equals(other.sender, sender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(timeStamp),
      const DeepCollectionEquality().hash(sender));

  @JsonKey(ignore: true)
  @override
  _$$_MessageItemCopyWith<_$_MessageItem> get copyWith =>
      __$$_MessageItemCopyWithImpl<_$_MessageItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageItemToJson(this);
  }
}

abstract class _MessageItem implements MessageItem {
  factory _MessageItem(
      {required final String message,
      required final DateTime timeStamp,
      required final Sender sender}) = _$_MessageItem;

  factory _MessageItem.fromJson(Map<String, dynamic> json) =
      _$_MessageItem.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  DateTime get timeStamp => throw _privateConstructorUsedError;
  @override
  Sender get sender => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MessageItemCopyWith<_$_MessageItem> get copyWith =>
      throw _privateConstructorUsedError;
}
