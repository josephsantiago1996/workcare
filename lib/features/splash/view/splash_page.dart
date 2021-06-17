import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:workcare/sign_in/view/sign_in_page.dart';

import '../../../home/home_page.dart';
import '../../../sign_in/controller/sign_in_controller.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends HookWidget {
  const SplashScreen();

  @override
  Widget build(BuildContext context) {
    return ProviderListener<AsyncValue<CurrentUser?>>(
      provider: signInWithTokenProvider,
      onChange: (context, value) {
        value.maybeWhen(
          error: (error, stackTrace) => Navigator.of(context).pushReplacement(SignInPage.route()),
          data: (value) => Navigator.of(context).pushReplacement(HomePage.route()),
          orElse: () {},
        );
      },
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
