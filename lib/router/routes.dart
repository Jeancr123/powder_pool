import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powder_pool/authentication/application/authentication_provider.dart';
import 'package:powder_pool/login/presentation/login_page.dart';

class AuthRoute extends ConsumerWidget {
  final Widget child;
  const AuthRoute({required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var authStatus = ref.watch(identityControllerProvider(identityRepoParams));
    var authProvider = ref.watch(authenticationProvider);
    var child = this.child;

    switch (authProvider) {
      case AuthenticationStatus.authenticated:
        child = child;
      default:
        child = LoginPage();
    }

    return Scaffold(body: child);
  }
}
