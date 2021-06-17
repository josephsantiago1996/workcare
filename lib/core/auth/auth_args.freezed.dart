// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthArgs _$AuthArgsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'signIn':
      return SignInAuthArgs.fromJson(json);
    case 'signInWithApple':
      return SignInWithAppleAuthArgs.fromJson(json);
    case 'signInWithFacebook':
      return SignInWithFacebookAuthArgs.fromJson(json);
    case 'signInWithGoogle':
      return SignInWithGoogleAuthArgs.fromJson(json);
    case 'signInWithToken':
      return SignInWithTokenAuthArgs.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$AuthArgsTearOff {
  const _$AuthArgsTearOff();

  SignInAuthArgs signIn({required String username, required String password}) {
    return SignInAuthArgs(
      username: username,
      password: password,
    );
  }

  SignInWithAppleAuthArgs signInWithApple({required String accessToken}) {
    return SignInWithAppleAuthArgs(
      accessToken: accessToken,
    );
  }

  SignInWithFacebookAuthArgs signInWithFacebook({required String accessToken}) {
    return SignInWithFacebookAuthArgs(
      accessToken: accessToken,
    );
  }

  SignInWithGoogleAuthArgs signInWithGoogle({required String accessToken}) {
    return SignInWithGoogleAuthArgs(
      accessToken: accessToken,
    );
  }

  SignInWithTokenAuthArgs signInWithToken({required String accessToken}) {
    return SignInWithTokenAuthArgs(
      accessToken: accessToken,
    );
  }

  AuthArgs fromJson(Map<String, Object> json) {
    return AuthArgs.fromJson(json);
  }
}

/// @nodoc
const $AuthArgs = _$AuthArgsTearOff();

/// @nodoc
mixin _$AuthArgs {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function(String accessToken) signInWithApple,
    required TResult Function(String accessToken) signInWithFacebook,
    required TResult Function(String accessToken) signInWithGoogle,
    required TResult Function(String accessToken) signInWithToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function(String accessToken)? signInWithApple,
    TResult Function(String accessToken)? signInWithFacebook,
    TResult Function(String accessToken)? signInWithGoogle,
    TResult Function(String accessToken)? signInWithToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthArgs value) signIn,
    required TResult Function(SignInWithAppleAuthArgs value) signInWithApple,
    required TResult Function(SignInWithFacebookAuthArgs value)
        signInWithFacebook,
    required TResult Function(SignInWithGoogleAuthArgs value) signInWithGoogle,
    required TResult Function(SignInWithTokenAuthArgs value) signInWithToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthArgs value)? signIn,
    TResult Function(SignInWithAppleAuthArgs value)? signInWithApple,
    TResult Function(SignInWithFacebookAuthArgs value)? signInWithFacebook,
    TResult Function(SignInWithGoogleAuthArgs value)? signInWithGoogle,
    TResult Function(SignInWithTokenAuthArgs value)? signInWithToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthArgsCopyWith<$Res> {
  factory $AuthArgsCopyWith(AuthArgs value, $Res Function(AuthArgs) then) =
      _$AuthArgsCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthArgsCopyWithImpl<$Res> implements $AuthArgsCopyWith<$Res> {
  _$AuthArgsCopyWithImpl(this._value, this._then);

  final AuthArgs _value;
  // ignore: unused_field
  final $Res Function(AuthArgs) _then;
}

/// @nodoc
abstract class $SignInAuthArgsCopyWith<$Res> {
  factory $SignInAuthArgsCopyWith(
          SignInAuthArgs value, $Res Function(SignInAuthArgs) then) =
      _$SignInAuthArgsCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$SignInAuthArgsCopyWithImpl<$Res> extends _$AuthArgsCopyWithImpl<$Res>
    implements $SignInAuthArgsCopyWith<$Res> {
  _$SignInAuthArgsCopyWithImpl(
      SignInAuthArgs _value, $Res Function(SignInAuthArgs) _then)
      : super(_value, (v) => _then(v as SignInAuthArgs));

  @override
  SignInAuthArgs get _value => super._value as SignInAuthArgs;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(SignInAuthArgs(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInAuthArgs extends SignInAuthArgs {
  const _$SignInAuthArgs({required this.username, required this.password})
      : super._();

  factory _$SignInAuthArgs.fromJson(Map<String, dynamic> json) =>
      _$_$SignInAuthArgsFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthArgs.signIn(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInAuthArgs &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $SignInAuthArgsCopyWith<SignInAuthArgs> get copyWith =>
      _$SignInAuthArgsCopyWithImpl<SignInAuthArgs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function(String accessToken) signInWithApple,
    required TResult Function(String accessToken) signInWithFacebook,
    required TResult Function(String accessToken) signInWithGoogle,
    required TResult Function(String accessToken) signInWithToken,
  }) {
    return signIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function(String accessToken)? signInWithApple,
    TResult Function(String accessToken)? signInWithFacebook,
    TResult Function(String accessToken)? signInWithGoogle,
    TResult Function(String accessToken)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthArgs value) signIn,
    required TResult Function(SignInWithAppleAuthArgs value) signInWithApple,
    required TResult Function(SignInWithFacebookAuthArgs value)
        signInWithFacebook,
    required TResult Function(SignInWithGoogleAuthArgs value) signInWithGoogle,
    required TResult Function(SignInWithTokenAuthArgs value) signInWithToken,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthArgs value)? signIn,
    TResult Function(SignInWithAppleAuthArgs value)? signInWithApple,
    TResult Function(SignInWithFacebookAuthArgs value)? signInWithFacebook,
    TResult Function(SignInWithGoogleAuthArgs value)? signInWithGoogle,
    TResult Function(SignInWithTokenAuthArgs value)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SignInAuthArgsToJson(this)..['runtimeType'] = 'signIn';
  }
}

abstract class SignInAuthArgs extends AuthArgs {
  const factory SignInAuthArgs(
      {required String username, required String password}) = _$SignInAuthArgs;
  const SignInAuthArgs._() : super._();

  factory SignInAuthArgs.fromJson(Map<String, dynamic> json) =
      _$SignInAuthArgs.fromJson;

  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInAuthArgsCopyWith<SignInAuthArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithAppleAuthArgsCopyWith<$Res> {
  factory $SignInWithAppleAuthArgsCopyWith(SignInWithAppleAuthArgs value,
          $Res Function(SignInWithAppleAuthArgs) then) =
      _$SignInWithAppleAuthArgsCopyWithImpl<$Res>;
  $Res call({String accessToken});
}

/// @nodoc
class _$SignInWithAppleAuthArgsCopyWithImpl<$Res>
    extends _$AuthArgsCopyWithImpl<$Res>
    implements $SignInWithAppleAuthArgsCopyWith<$Res> {
  _$SignInWithAppleAuthArgsCopyWithImpl(SignInWithAppleAuthArgs _value,
      $Res Function(SignInWithAppleAuthArgs) _then)
      : super(_value, (v) => _then(v as SignInWithAppleAuthArgs));

  @override
  SignInWithAppleAuthArgs get _value => super._value as SignInWithAppleAuthArgs;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(SignInWithAppleAuthArgs(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInWithAppleAuthArgs extends SignInWithAppleAuthArgs {
  const _$SignInWithAppleAuthArgs({required this.accessToken}) : super._();

  factory _$SignInWithAppleAuthArgs.fromJson(Map<String, dynamic> json) =>
      _$_$SignInWithAppleAuthArgsFromJson(json);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthArgs.signInWithApple(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithAppleAuthArgs &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  $SignInWithAppleAuthArgsCopyWith<SignInWithAppleAuthArgs> get copyWith =>
      _$SignInWithAppleAuthArgsCopyWithImpl<SignInWithAppleAuthArgs>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function(String accessToken) signInWithApple,
    required TResult Function(String accessToken) signInWithFacebook,
    required TResult Function(String accessToken) signInWithGoogle,
    required TResult Function(String accessToken) signInWithToken,
  }) {
    return signInWithApple(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function(String accessToken)? signInWithApple,
    TResult Function(String accessToken)? signInWithFacebook,
    TResult Function(String accessToken)? signInWithGoogle,
    TResult Function(String accessToken)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signInWithApple != null) {
      return signInWithApple(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthArgs value) signIn,
    required TResult Function(SignInWithAppleAuthArgs value) signInWithApple,
    required TResult Function(SignInWithFacebookAuthArgs value)
        signInWithFacebook,
    required TResult Function(SignInWithGoogleAuthArgs value) signInWithGoogle,
    required TResult Function(SignInWithTokenAuthArgs value) signInWithToken,
  }) {
    return signInWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthArgs value)? signIn,
    TResult Function(SignInWithAppleAuthArgs value)? signInWithApple,
    TResult Function(SignInWithFacebookAuthArgs value)? signInWithFacebook,
    TResult Function(SignInWithGoogleAuthArgs value)? signInWithGoogle,
    TResult Function(SignInWithTokenAuthArgs value)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signInWithApple != null) {
      return signInWithApple(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SignInWithAppleAuthArgsToJson(this)
      ..['runtimeType'] = 'signInWithApple';
  }
}

abstract class SignInWithAppleAuthArgs extends AuthArgs {
  const factory SignInWithAppleAuthArgs({required String accessToken}) =
      _$SignInWithAppleAuthArgs;
  const SignInWithAppleAuthArgs._() : super._();

  factory SignInWithAppleAuthArgs.fromJson(Map<String, dynamic> json) =
      _$SignInWithAppleAuthArgs.fromJson;

  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInWithAppleAuthArgsCopyWith<SignInWithAppleAuthArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithFacebookAuthArgsCopyWith<$Res> {
  factory $SignInWithFacebookAuthArgsCopyWith(SignInWithFacebookAuthArgs value,
          $Res Function(SignInWithFacebookAuthArgs) then) =
      _$SignInWithFacebookAuthArgsCopyWithImpl<$Res>;
  $Res call({String accessToken});
}

/// @nodoc
class _$SignInWithFacebookAuthArgsCopyWithImpl<$Res>
    extends _$AuthArgsCopyWithImpl<$Res>
    implements $SignInWithFacebookAuthArgsCopyWith<$Res> {
  _$SignInWithFacebookAuthArgsCopyWithImpl(SignInWithFacebookAuthArgs _value,
      $Res Function(SignInWithFacebookAuthArgs) _then)
      : super(_value, (v) => _then(v as SignInWithFacebookAuthArgs));

  @override
  SignInWithFacebookAuthArgs get _value =>
      super._value as SignInWithFacebookAuthArgs;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(SignInWithFacebookAuthArgs(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInWithFacebookAuthArgs extends SignInWithFacebookAuthArgs {
  const _$SignInWithFacebookAuthArgs({required this.accessToken}) : super._();

  factory _$SignInWithFacebookAuthArgs.fromJson(Map<String, dynamic> json) =>
      _$_$SignInWithFacebookAuthArgsFromJson(json);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthArgs.signInWithFacebook(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithFacebookAuthArgs &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  $SignInWithFacebookAuthArgsCopyWith<SignInWithFacebookAuthArgs>
      get copyWith =>
          _$SignInWithFacebookAuthArgsCopyWithImpl<SignInWithFacebookAuthArgs>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function(String accessToken) signInWithApple,
    required TResult Function(String accessToken) signInWithFacebook,
    required TResult Function(String accessToken) signInWithGoogle,
    required TResult Function(String accessToken) signInWithToken,
  }) {
    return signInWithFacebook(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function(String accessToken)? signInWithApple,
    TResult Function(String accessToken)? signInWithFacebook,
    TResult Function(String accessToken)? signInWithGoogle,
    TResult Function(String accessToken)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signInWithFacebook != null) {
      return signInWithFacebook(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthArgs value) signIn,
    required TResult Function(SignInWithAppleAuthArgs value) signInWithApple,
    required TResult Function(SignInWithFacebookAuthArgs value)
        signInWithFacebook,
    required TResult Function(SignInWithGoogleAuthArgs value) signInWithGoogle,
    required TResult Function(SignInWithTokenAuthArgs value) signInWithToken,
  }) {
    return signInWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthArgs value)? signIn,
    TResult Function(SignInWithAppleAuthArgs value)? signInWithApple,
    TResult Function(SignInWithFacebookAuthArgs value)? signInWithFacebook,
    TResult Function(SignInWithGoogleAuthArgs value)? signInWithGoogle,
    TResult Function(SignInWithTokenAuthArgs value)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signInWithFacebook != null) {
      return signInWithFacebook(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SignInWithFacebookAuthArgsToJson(this)
      ..['runtimeType'] = 'signInWithFacebook';
  }
}

abstract class SignInWithFacebookAuthArgs extends AuthArgs {
  const factory SignInWithFacebookAuthArgs({required String accessToken}) =
      _$SignInWithFacebookAuthArgs;
  const SignInWithFacebookAuthArgs._() : super._();

  factory SignInWithFacebookAuthArgs.fromJson(Map<String, dynamic> json) =
      _$SignInWithFacebookAuthArgs.fromJson;

  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInWithFacebookAuthArgsCopyWith<SignInWithFacebookAuthArgs>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleAuthArgsCopyWith<$Res> {
  factory $SignInWithGoogleAuthArgsCopyWith(SignInWithGoogleAuthArgs value,
          $Res Function(SignInWithGoogleAuthArgs) then) =
      _$SignInWithGoogleAuthArgsCopyWithImpl<$Res>;
  $Res call({String accessToken});
}

/// @nodoc
class _$SignInWithGoogleAuthArgsCopyWithImpl<$Res>
    extends _$AuthArgsCopyWithImpl<$Res>
    implements $SignInWithGoogleAuthArgsCopyWith<$Res> {
  _$SignInWithGoogleAuthArgsCopyWithImpl(SignInWithGoogleAuthArgs _value,
      $Res Function(SignInWithGoogleAuthArgs) _then)
      : super(_value, (v) => _then(v as SignInWithGoogleAuthArgs));

  @override
  SignInWithGoogleAuthArgs get _value =>
      super._value as SignInWithGoogleAuthArgs;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(SignInWithGoogleAuthArgs(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInWithGoogleAuthArgs extends SignInWithGoogleAuthArgs {
  const _$SignInWithGoogleAuthArgs({required this.accessToken}) : super._();

  factory _$SignInWithGoogleAuthArgs.fromJson(Map<String, dynamic> json) =>
      _$_$SignInWithGoogleAuthArgsFromJson(json);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthArgs.signInWithGoogle(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithGoogleAuthArgs &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  $SignInWithGoogleAuthArgsCopyWith<SignInWithGoogleAuthArgs> get copyWith =>
      _$SignInWithGoogleAuthArgsCopyWithImpl<SignInWithGoogleAuthArgs>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function(String accessToken) signInWithApple,
    required TResult Function(String accessToken) signInWithFacebook,
    required TResult Function(String accessToken) signInWithGoogle,
    required TResult Function(String accessToken) signInWithToken,
  }) {
    return signInWithGoogle(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function(String accessToken)? signInWithApple,
    TResult Function(String accessToken)? signInWithFacebook,
    TResult Function(String accessToken)? signInWithGoogle,
    TResult Function(String accessToken)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthArgs value) signIn,
    required TResult Function(SignInWithAppleAuthArgs value) signInWithApple,
    required TResult Function(SignInWithFacebookAuthArgs value)
        signInWithFacebook,
    required TResult Function(SignInWithGoogleAuthArgs value) signInWithGoogle,
    required TResult Function(SignInWithTokenAuthArgs value) signInWithToken,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthArgs value)? signIn,
    TResult Function(SignInWithAppleAuthArgs value)? signInWithApple,
    TResult Function(SignInWithFacebookAuthArgs value)? signInWithFacebook,
    TResult Function(SignInWithGoogleAuthArgs value)? signInWithGoogle,
    TResult Function(SignInWithTokenAuthArgs value)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SignInWithGoogleAuthArgsToJson(this)
      ..['runtimeType'] = 'signInWithGoogle';
  }
}

abstract class SignInWithGoogleAuthArgs extends AuthArgs {
  const factory SignInWithGoogleAuthArgs({required String accessToken}) =
      _$SignInWithGoogleAuthArgs;
  const SignInWithGoogleAuthArgs._() : super._();

  factory SignInWithGoogleAuthArgs.fromJson(Map<String, dynamic> json) =
      _$SignInWithGoogleAuthArgs.fromJson;

  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInWithGoogleAuthArgsCopyWith<SignInWithGoogleAuthArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithTokenAuthArgsCopyWith<$Res> {
  factory $SignInWithTokenAuthArgsCopyWith(SignInWithTokenAuthArgs value,
          $Res Function(SignInWithTokenAuthArgs) then) =
      _$SignInWithTokenAuthArgsCopyWithImpl<$Res>;
  $Res call({String accessToken});
}

/// @nodoc
class _$SignInWithTokenAuthArgsCopyWithImpl<$Res>
    extends _$AuthArgsCopyWithImpl<$Res>
    implements $SignInWithTokenAuthArgsCopyWith<$Res> {
  _$SignInWithTokenAuthArgsCopyWithImpl(SignInWithTokenAuthArgs _value,
      $Res Function(SignInWithTokenAuthArgs) _then)
      : super(_value, (v) => _then(v as SignInWithTokenAuthArgs));

  @override
  SignInWithTokenAuthArgs get _value => super._value as SignInWithTokenAuthArgs;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(SignInWithTokenAuthArgs(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInWithTokenAuthArgs extends SignInWithTokenAuthArgs {
  const _$SignInWithTokenAuthArgs({required this.accessToken}) : super._();

  factory _$SignInWithTokenAuthArgs.fromJson(Map<String, dynamic> json) =>
      _$_$SignInWithTokenAuthArgsFromJson(json);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthArgs.signInWithToken(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithTokenAuthArgs &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  $SignInWithTokenAuthArgsCopyWith<SignInWithTokenAuthArgs> get copyWith =>
      _$SignInWithTokenAuthArgsCopyWithImpl<SignInWithTokenAuthArgs>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function(String accessToken) signInWithApple,
    required TResult Function(String accessToken) signInWithFacebook,
    required TResult Function(String accessToken) signInWithGoogle,
    required TResult Function(String accessToken) signInWithToken,
  }) {
    return signInWithToken(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function(String accessToken)? signInWithApple,
    TResult Function(String accessToken)? signInWithFacebook,
    TResult Function(String accessToken)? signInWithGoogle,
    TResult Function(String accessToken)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signInWithToken != null) {
      return signInWithToken(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthArgs value) signIn,
    required TResult Function(SignInWithAppleAuthArgs value) signInWithApple,
    required TResult Function(SignInWithFacebookAuthArgs value)
        signInWithFacebook,
    required TResult Function(SignInWithGoogleAuthArgs value) signInWithGoogle,
    required TResult Function(SignInWithTokenAuthArgs value) signInWithToken,
  }) {
    return signInWithToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthArgs value)? signIn,
    TResult Function(SignInWithAppleAuthArgs value)? signInWithApple,
    TResult Function(SignInWithFacebookAuthArgs value)? signInWithFacebook,
    TResult Function(SignInWithGoogleAuthArgs value)? signInWithGoogle,
    TResult Function(SignInWithTokenAuthArgs value)? signInWithToken,
    required TResult orElse(),
  }) {
    if (signInWithToken != null) {
      return signInWithToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SignInWithTokenAuthArgsToJson(this)
      ..['runtimeType'] = 'signInWithToken';
  }
}

abstract class SignInWithTokenAuthArgs extends AuthArgs {
  const factory SignInWithTokenAuthArgs({required String accessToken}) =
      _$SignInWithTokenAuthArgs;
  const SignInWithTokenAuthArgs._() : super._();

  factory SignInWithTokenAuthArgs.fromJson(Map<String, dynamic> json) =
      _$SignInWithTokenAuthArgs.fromJson;

  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInWithTokenAuthArgsCopyWith<SignInWithTokenAuthArgs> get copyWith =>
      throw _privateConstructorUsedError;
}
