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
      return Container(
        // padding: const EdgeInsets.only(top: 30),
        // margin: const EdgeInsets.only(bottom: 10),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent, // ← prevent grey tint overlay
          scrolledUnderElevation: 2,
          title: Row(
            children: [
              Icon(Icons.cloudy_snowing, color: Colors.cyan.shade500),
              SizedBox(width: 5),
              Text(
                'PowderPool',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () => _onNavItemTap(context, Routes.home),
                child: Text(
                  'Home',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(width: 30),
              TextButton(
                onPressed: () => _onNavItemTap(context, Routes.resorts),
                child: Text(
                  'Resorts',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(width: 30),
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
              Spacer(),
              SizedBox.shrink(),
            ],
          ),
        ),
      );
    } else {
      return Container(
        // padding: const EdgeInsets.only(top: 30),
        // margin: const EdgeInsets.only(bottom: 10),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent, // ← prevent grey tint overlay
          scrolledUnderElevation: 2,
          title: Row(
            children: [
              Icon(Icons.cloudy_snowing, color: Colors.cyan.shade500),
              SizedBox(width: 5),
              Text(
                'PowderPool',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
                ),
              ),
              Spacer(),

              TextButton(
                onPressed: () => _onNavItemTap(context, Routes.home),
                child: Text(
                  'Home',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(width: 30),
              TextButton(
                onPressed: () => _onNavItemTap(context, Routes.resorts),
                child: Text(
                  'Resorts',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(width: 30),
              TextButton(
                onPressed: () => _onNavItemTap(context, Routes.login),
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () => _onNavItemTap(context, Routes.signUp),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF116e74),
                  foregroundColor: Colors.white,
                  minimumSize: Size(
                    80,
                    80,
                  ), // square button with larger dimensions
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // removes rounded corners
                  ),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 18), // slightly larger text
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
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
