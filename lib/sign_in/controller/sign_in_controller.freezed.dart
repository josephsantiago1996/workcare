// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentUser _$CurrentUserFromJson(Map<String, dynamic> json) {
  return _CurrentUser.fromJson(json);
}

/// @nodoc
class _$CurrentUserTearOff {
  const _$CurrentUserTearOff();

  _CurrentUser call() {
    return const _CurrentUser();
  }

  CurrentUser fromJson(Map<String, Object> json) {
    return CurrentUser.fromJson(json);
  }
}

/// @nodoc
const $CurrentUser = _$CurrentUserTearOff();

/// @nodoc
mixin _$CurrentUser {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserCopyWith<$Res> {
  factory $CurrentUserCopyWith(
          CurrentUser value, $Res Function(CurrentUser) then) =
      _$CurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentUserCopyWithImpl<$Res> implements $CurrentUserCopyWith<$Res> {
  _$CurrentUserCopyWithImpl(this._value, this._then);

  final CurrentUser _value;
  // ignore: unused_field
  final $Res Function(CurrentUser) _then;
}

/// @nodoc
abstract class _$CurrentUserCopyWith<$Res> {
  factory _$CurrentUserCopyWith(
          _CurrentUser value, $Res Function(_CurrentUser) then) =
      __$CurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$CurrentUserCopyWithImpl<$Res> extends _$CurrentUserCopyWithImpl<$Res>
    implements _$CurrentUserCopyWith<$Res> {
  __$CurrentUserCopyWithImpl(
      _CurrentUser _value, $Res Function(_CurrentUser) _then)
      : super(_value, (v) => _then(v as _CurrentUser));

  @override
  _CurrentUser get _value => super._value as _CurrentUser;
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CurrentUser extends _CurrentUser {
  const _$_CurrentUser() : super._();

  factory _$_CurrentUser.fromJson(Map<String, dynamic> json) =>
      _$_$_CurrentUserFromJson(json);

  @override
  String toString() {
    return 'CurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurrentUserToJson(this);
  }
}

abstract class _CurrentUser extends CurrentUser {
  const factory _CurrentUser() = _$_CurrentUser;
  const _CurrentUser._() : super._();

  factory _CurrentUser.fromJson(Map<String, dynamic> json) =
      _$_CurrentUser.fromJson;
}
