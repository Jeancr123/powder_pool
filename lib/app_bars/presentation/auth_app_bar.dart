import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:powder_pool/authentication/application/authentication_provider.dart';
import 'package:powder_pool/router/domain/routes.dart';

class AuthAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authProvider = ref.watch(authenticationProvider);
    if (authProvider == AuthenticationStatus.authenticated) {
      return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text('PowderPool', style: TextStyle(color: Colors.black)),
            Spacer(),
            TextButton(
              onPressed: () => _onNavItemTap(context, Routes.home),
              child: Text(
                'Home',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () => _onNavItemTap(context, Routes.resorts),
              child: Text(
                'Resorts',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                ref.read(authenticationProvider.notifier).logOut();
                context.goNamed(Routes.home.name);
              },
              child: Text(
                'Log Out',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      );
    } else {
      return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text('PowderPool', style: TextStyle(color: Colors.black)),
            Spacer(),
            TextButton(
              onPressed: () => _onNavItemTap(context, Routes.home),
              child: Text(
                'Home',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () => _onNavItemTap(context, Routes.resorts),
              child: Text(
                'Resorts',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () => _onNavItemTap(context, Routes.login),
              child: Text(
                'Log In',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () => _onNavItemTap(context, Routes.signUp),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan.shade500,
                foregroundColor: Colors.white,
              ),
              child: Text('Register', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      );
    }
  }

  void _onNavItemTap(BuildContext context, Routes route) {
    context.goNamed(route.name);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
