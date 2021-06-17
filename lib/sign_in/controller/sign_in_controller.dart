import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod/riverpod.dart';

import '../../core/auth/auth_args.dart';
import '../../core/auth/auth_repository.dart';

part 'sign_in_controller.freezed.dart';
part 'sign_in_controller.g.dart';

@freezed
@immutable
class CurrentUser with _$CurrentUser {
  @JsonSerializable(explicitToJson: true)
  const CurrentUser._();

  @JsonSerializable(explicitToJson: true)
  const factory CurrentUser() = _CurrentUser;

  factory CurrentUser.fromJson(Map<String, dynamic> json) => _$CurrentUserFromJson(json);
}

// States
final currentUserProvider = StateNotifierProvider.autoDispose<CurrentUserNotifier, CurrentUser?>((ref) => CurrentUserNotifier());

class CurrentUserNotifier extends StateNotifier<CurrentUser?> {
  CurrentUserNotifier() : super(null);
}

// Actions
final signInProvider = StateNotifierProvider.autoDispose<SignInNotifier, AsyncValue<CurrentUser?>>((ref) => SignInNotifier(ref.read));

class SignInNotifier extends StateNotifier<AsyncValue<CurrentUser?>> {
  SignInNotifier(this.read) : super(const AsyncValue.data(null));

  final Reader read;

  late final IAuthRepository repository = read(authRepositoryProvider);
  // IAuthRepository get repository => _repository ?? (() => _repository = read(authRepositoryProvider))();

  CurrentUser? get user => read(currentUserProvider);
  set user(CurrentUser? user) => read(currentUserProvider.notifier).state = user;

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() {
      return repository.signIn(
        SignInAuthArgs(
          username: 'null',
          password: 'null',
        ),
      );
    });
    state.whenData((value) => user = value);
  }
}

final signInWithFacebookProvider = StateNotifierProvider.autoDispose<SignInWithFacebookNotifier, AsyncValue<CurrentUser?>>((ref) => SignInWithFacebookNotifier(ref.read));

class SignInWithFacebookNotifier extends StateNotifier<AsyncValue<CurrentUser?>> {
  SignInWithFacebookNotifier(this.read) : super(const AsyncValue.data(null));

  final Reader read;

  late final FacebookAuth facebookAuth = FacebookAuth.instance;
  // FacebookAuth get facebookAuth => _facebookAuth ?? (() => _facebookAuth = FacebookAuth.instance)();

  late final IAuthRepository repository = read(authRepositoryProvider);
  // IAuthRepository get repository => _repository ?? (() => _repository = read(authRepositoryProvider))();

  CurrentUser? get user => read(currentUserProvider);
  set user(CurrentUser? user) => read(currentUserProvider.notifier).state = user;

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await facebookAuth.login();

      if (result.status == LoginStatus.cancelled) {
        throw 'Cancelled';
      }

      if (result.status == LoginStatus.failed) {}

      if (result.status == LoginStatus.success) {
        return repository.signInWithFacebook(
          SignInWithFacebookAuthArgs(
            accessToken: result.accessToken!.token,
          ),
        );
      }

      throw FallThroughError();
    });
    state.whenData((value) => user = value);
  }
}

final signInWithGoogleProvider = StateNotifierProvider.autoDispose<SignInWithGoogleNotifier, AsyncValue<CurrentUser?>>((ref) => SignInWithGoogleNotifier(ref.read));

class SignInWithGoogleNotifier extends StateNotifier<AsyncValue<CurrentUser?>> {
  SignInWithGoogleNotifier(this.read) : super(const AsyncValue.data(null));

  final Reader read;

  late final GoogleSignIn googleSignIn = GoogleSignIn.standard();
  // GoogleSignIn get googleSignIn => _googleSignIn ?? (() => _googleSignIn = GoogleSignIn.standard())();

  late final IAuthRepository repository = read(authRepositoryProvider);
  // IAuthRepository get repository => _repository ?? (() => _repository = read(authRepositoryProvider))();

  CurrentUser? get user => read(currentUserProvider);
  set user(CurrentUser? user) => read(currentUserProvider.notifier).state = user;

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final account = await googleSignIn.signIn();

      if (account == null) {
        throw 'Cancelled';
      }

      final authentication = await account.authentication;

      return repository.signInWithGoogle(
        SignInWithGoogleAuthArgs(
          accessToken: authentication.accessToken!,
        ),
      );
    });
    state.whenData((value) => user = value);
  }
}

// Computed
final isBusyProvider = Provider.autoDispose((ref) {
  final a = ref.watch(signInProvider).maybeWhen(loading: () => true, orElse: () => false);
  final b = ref.watch(signInWithFacebookProvider).maybeWhen(loading: () => true, orElse: () => false);
  final c = ref.watch(signInWithGoogleProvider).maybeWhen(loading: () => true, orElse: () => false);

  return a || b || c;
});

final isIdleProvider = Provider.autoDispose((ref) {
  return !ref.watch(isBusyProvider);
});
