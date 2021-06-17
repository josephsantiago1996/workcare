import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod/riverpod.dart';

import '../../sign_in/controller/sign_in_controller.dart';
import '../client.dart';
import 'auth_args.dart';

final authRepositoryProvider = Provider<IAuthRepository>((ref) => AuthRepository(ref.read));

abstract class IAuthRepository {
  Future<CurrentUser> signIn(SignInAuthArgs args);
  Future<CurrentUser> signInWithApple(SignInWithAppleAuthArgs args);
  Future<CurrentUser> signInWithFacebook(SignInWithFacebookAuthArgs args);
  Future<CurrentUser> signInWithGoogle(SignInWithGoogleAuthArgs args);
  Future<CurrentUser> signInWithToken(SignInWithTokenAuthArgs args);
  Future<CurrentUser> signOut();
}

class AuthRepository implements IAuthRepository {
  AuthRepository(this.read);

  final Reader read;

  late final Client client = read(clientProvider);
  // Client get client => _client ?? (() => _client = read(clientProvider))();

  @override
  Future<CurrentUser> signIn(SignInAuthArgs args) async {
    // final user = await client.signIn(args);
    await Future.delayed(Duration(seconds: 2));
    final storage = FlutterSecureStorage();
    await storage.write(key: 'token', value: 'token');
    return CurrentUser();
  }

  @override
  Future<CurrentUser> signInWithApple(SignInWithAppleAuthArgs args) async {
    // final user = await client.signInWithApple(args);
    await Future.delayed(Duration(seconds: 2));
    final storage = FlutterSecureStorage();
    await storage.write(key: 'token', value: 'token');
    return CurrentUser();
  }

  @override
  Future<CurrentUser> signInWithFacebook(SignInWithFacebookAuthArgs args) async {
    // final user = await client.signInWithFacebook(args);
    await Future.delayed(Duration(seconds: 2));
    final storage = FlutterSecureStorage();
    await storage.write(key: 'token', value: 'token');
    return CurrentUser();
  }

  @override
  Future<CurrentUser> signInWithGoogle(SignInWithGoogleAuthArgs args) async {
    // final user = await client.signInWithGoogle(args);
    await Future.delayed(Duration(seconds: 2));
    final storage = FlutterSecureStorage();
    await storage.write(key: 'token', value: 'token');
    return CurrentUser();
  }

  @override
  Future<CurrentUser> signInWithToken(SignInWithTokenAuthArgs args) async {
    // return client.signInWithToken(args);
    await Future.delayed(Duration(seconds: 2));
    final storage = FlutterSecureStorage();
    final token = await storage.read(key: 'token');
    if (token == null) {
      throw UnimplementedError();
    }
    return CurrentUser();
  }

  Future<CurrentUser> signOut() async {
    // final currentUser = await client.signOut();
    await Future.delayed(Duration(seconds: 2));
    final storage = FlutterSecureStorage();
    await storage.deleteAll();
    return CurrentUser();
  }
}

abstract class Repository {
  static void guard() {}
}
