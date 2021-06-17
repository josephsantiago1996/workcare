// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _Chat call(
      {required String id,
      required String data,
      required ChatUser user,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _Chat(
      id: id,
      data: data,
      user: user,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Chat fromJson(Map<String, Object> json) {
    return Chat.fromJson(json);
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  String get id => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  ChatUser get user => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String data,
      ChatUser user,
      DateTime createdAt,
      DateTime updatedAt});

  $ChatUserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ChatUser,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ChatUserCopyWith<$Res> get user {
    return $ChatUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) then) =
      __$ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String data,
      ChatUser user,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ChatUserCopyWith<$Res> get user;
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(_Chat _value, $Res Function(_Chat) _then)
      : super(_value, (v) => _then(v as _Chat));

  @override
  _Chat get _value => super._value as _Chat;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Chat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ChatUser,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Chat extends _Chat {
  const _$_Chat(
      {required this.id,
      required this.data,
      required this.user,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$_Chat.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatFromJson(json);

  @override
  final String id;
  @override
  final String data;
  @override
  final ChatUser user;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Chat(id: $id, data: $data, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Chat &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatToJson(this);
  }
}

abstract class _Chat extends Chat {
  const factory _Chat(
      {required String id,
      required String data,
      required ChatUser user,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_Chat;
  const _Chat._() : super._();

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get data => throw _privateConstructorUsedError;
  @override
  ChatUser get user => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatCopyWith<_Chat> get copyWith => throw _privateConstructorUsedError;
}

ChatUser _$ChatUserFromJson(Map<String, dynamic> json) {
  return _ChatUser.fromJson(json);
}

/// @nodoc
class _$ChatUserTearOff {
  const _$ChatUserTearOff();

  _ChatUser call(
      {required String id,
      required String photoUrl,
      required String displayName}) {
    return _ChatUser(
      id: id,
      photoUrl: photoUrl,
      displayName: displayName,
    );
  }

  ChatUser fromJson(Map<String, Object> json) {
    return ChatUser.fromJson(json);
  }
}

/// @nodoc
const $ChatUser = _$ChatUserTearOff();

/// @nodoc
mixin _$ChatUser {
  String get id => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatUserCopyWith<ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserCopyWith<$Res> {
  factory $ChatUserCopyWith(ChatUser value, $Res Function(ChatUser) then) =
      _$ChatUserCopyWithImpl<$Res>;
  $Res call({String id, String photoUrl, String displayName});
}

/// @nodoc
class _$ChatUserCopyWithImpl<$Res> implements $ChatUserCopyWith<$Res> {
  _$ChatUserCopyWithImpl(this._value, this._then);

  final ChatUser _value;
  // ignore: unused_field
  final $Res Function(ChatUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatUserCopyWith<$Res> implements $ChatUserCopyWith<$Res> {
  factory _$ChatUserCopyWith(_ChatUser value, $Res Function(_ChatUser) then) =
      __$ChatUserCopyWithImpl<$Res>;
  @override
  $Res call({String id, String photoUrl, String displayName});
}

/// @nodoc
class __$ChatUserCopyWithImpl<$Res> extends _$ChatUserCopyWithImpl<$Res>
    implements _$ChatUserCopyWith<$Res> {
  __$ChatUserCopyWithImpl(_ChatUser _value, $Res Function(_ChatUser) _then)
      : super(_value, (v) => _then(v as _ChatUser));

  @override
  _ChatUser get _value => super._value as _ChatUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_ChatUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatUser extends _ChatUser {
  const _$_ChatUser(
      {required this.id, required this.photoUrl, required this.displayName})
      : super._();

  factory _$_ChatUser.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatUserFromJson(json);

  @override
  final String id;
  @override
  final String photoUrl;
  @override
  final String displayName;

  @override
  String toString() {
    return 'ChatUser(id: $id, photoUrl: $photoUrl, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(displayName);

  @JsonKey(ignore: true)
  @override
  _$ChatUserCopyWith<_ChatUser> get copyWith =>
      __$ChatUserCopyWithImpl<_ChatUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatUserToJson(this);
  }
}

abstract class _ChatUser extends ChatUser {
  const factory _ChatUser(
      {required String id,
      required String photoUrl,
      required String displayName}) = _$_ChatUser;
  const _ChatUser._() : super._();

  factory _ChatUser.fromJson(Map<String, dynamic> json) = _$_ChatUser.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatUserCopyWith<_ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}
