import 'package:riverpod/riverpod.dart';

import '../../../core/auth/auth_args.dart';
import '../../../core/auth/auth_repository.dart';
import '../../../sign_in/controller/sign_in_controller.dart';

final signInWithTokenProvider = StateNotifierProvider.autoDispose<SignInWithToken, AsyncValue<CurrentUser?>>((ref) => SignInWithToken(ref.read));

class SignInWithToken extends StateNotifier<AsyncValue<CurrentUser?>> {
  SignInWithToken(this.read) : super(const AsyncValue.data(null)) {
    call();
  }

  final Reader read;

  late final IAuthRepository repository = read(authRepositoryProvider);
  // IAuthRepository get repository => _repository ?? (() => _repository = read(authRepositoryProvider))();

  void call() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await Future.delayed(Duration(seconds: 1));
      // return CurrentUser();
      return repository.signInWithToken(SignInWithTokenAuthArgs(accessToken: ''));
    });
  }
}
