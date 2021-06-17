import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_args.g.dart';
part 'auth_args.freezed.dart';

@freezed
@immutable
abstract class AuthArgs implements _$AuthArgs {
  const AuthArgs._();

  const factory AuthArgs.signIn({
    required String username,
    required String password,
  }) = SignInAuthArgs;

  const factory AuthArgs.signInWithApple({
    required String accessToken,
  }) = SignInWithAppleAuthArgs;

  const factory AuthArgs.signInWithFacebook({
    required String accessToken,
  }) = SignInWithFacebookAuthArgs;

  const factory AuthArgs.signInWithGoogle({
    required String accessToken,
  }) = SignInWithGoogleAuthArgs;

  const factory AuthArgs.signInWithToken({
    required String accessToken,
  }) = SignInWithTokenAuthArgs;

  factory AuthArgs.fromJson(Map<String, dynamic> json) => _$AuthArgsFromJson(json);
}
