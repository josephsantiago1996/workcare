import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../home/home_page.dart';
import '../controller/sign_in_controller.dart';

class SignInPage {
  static const routeName = '/sign-in';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => const SignInScreen(),
    );
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen();

  @override
  Widget build(BuildContext context) {
    return ProviderListener<CurrentUser?>(
      provider: currentUserProvider,
      onChange: (context, state) {
        if (state != null) {
          Navigator.of(context).pushAndRemoveUntil(HomePage.route(), (route) => false);
        }
      },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: ListView(
                padding: const EdgeInsets.all(32.0),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  const Gap(32.0),
                  HookBuilder(
                    builder: (context) {
                      final isIdle = useProvider(isIdleProvider);

                      return TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          enabled: isIdle,
                          isDense: true,
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          hintText: 'Email Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            borderSide: BorderSide(
                              color: Color(0xFF364b68),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xFF364b68),
                          ),
                        ),
                      );
                    },
                  ),
                  const Gap(12.0),
                  HookBuilder(
                    builder: (context) {
                      final isIdle = useProvider(isIdleProvider);

                      return TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          enabled: isIdle,
                          isDense: true,
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            borderSide: BorderSide(
                              color: Color(0xFF364b68),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFF364b68),
                          ),
                        ),
                      );
                    },
                  ),
                  const Gap(12.0),
                  HookBuilder(
                    builder: (context) {
                      final isBusy = useProvider(isBusyProvider);
                      final isLoading = useProvider(
                        signInProvider.select(
                          (state) => state.maybeWhen(
                            loading: () => true,
                            orElse: () => false,
                          ),
                        ),
                      );

                      return ProviderListener<AsyncValue<CurrentUser?>>(
                        provider: signInProvider,
                        onChange: (context, state) {
                          state.maybeWhen(
                            error: (error, stackTrace) {
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    content: Text('${error.toString()}'),
                                  ),
                                );
                            },
                            orElse: () {},
                          );
                        },
                        child: TextButton(
                          onPressed: !isBusy ? () => context.read(signInProvider.notifier).call() : null,
                          child: Text(isLoading ? 'Signing In...' : 'Sign In'),
                        ),
                      );
                    },
                  ),
                  const Gap(32.0),
                  Row(
                    children: [
                      Expanded(
                        child: const Divider(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      const Gap(12.0),
                      Text(
                        'or connect via',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white),
                      ),
                      const Gap(12.0),
                      Expanded(
                        child: const Divider(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  const Gap(32.0),
                  HookBuilder(
                    builder: (context) {
                      final isBusy = useProvider(isBusyProvider);
                      final isLoading = useProvider(
                        signInWithFacebookProvider.select(
                          (state) => state.maybeWhen(
                            loading: () => true,
                            orElse: () => false,
                          ),
                        ),
                      );

                      return ProviderListener<AsyncValue<CurrentUser?>>(
                        provider: signInWithFacebookProvider,
                        onChange: (context, state) {
                          state.maybeWhen(
                            error: (error, stackTrace) {
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    content: Text('${error.toString()}'),
                                  ),
                                );
                            },
                            orElse: () {},
                          );
                        },
                        child: TextButton(
                          onPressed: !isBusy ? () => context.read(signInWithFacebookProvider.notifier).call() : null,
                          child: Text(isLoading ? 'Sign In with Facebook' : 'Signing In...'),
                        ),
                      );
                    },
                  ),
                  const Gap(12.0),
                  HookBuilder(
                    builder: (context) {
                      final isBusy = useProvider(isBusyProvider);
                      final isLoading = useProvider(
                        signInWithGoogleProvider.select(
                          (state) => state.maybeWhen(
                            loading: () => true,
                            orElse: () => false,
                          ),
                        ),
                      );

                      return ProviderListener<AsyncValue<CurrentUser?>>(
                        provider: signInWithGoogleProvider,
                        onChange: (context, state) {
                          state.maybeWhen(
                            error: (error, stackTrace) {
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    content: Text('${error.toString()}'),
                                  ),
                                );
                            },
                            orElse: () {},
                          );
                        },
                        child: TextButton(
                          onPressed: !isBusy ? () => context.read(signInWithGoogleProvider.notifier).call() : null,
                          child: Text(isLoading ? 'Sign In with Google' : 'Signing In...'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
