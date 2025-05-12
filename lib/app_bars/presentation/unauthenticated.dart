import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:powder_pool/router/domain/routes.dart';

class UnauthenticatedAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const UnauthenticatedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Text('PowderPool', style: TextStyle(color: Colors.black)),
          Spacer(),
          TextButton(
            onPressed: () => _onNavItemTap(context, Routes.home),
            child: Text('Home'),
          ),
          TextButton(
            onPressed: () => _onNavItemTap(context, Routes.resorts),
            child: Text('Resorts'),
          ),
          TextButton(
            onPressed: () => _onNavItemTap(context, Routes.carpoolByResort),
            child: Text('Carpool by Resort'),
          ),
          TextButton(
            onPressed: () => _onNavItemTap(context, Routes.login),
            child: Text('Log In'),
          ),
          ElevatedButton(
            onPressed: () => _onNavItemTap(context, Routes.signUp),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan.shade500,
              foregroundColor: Colors.white,
            ),
            child: Text('Register'),
          ),
        ],
      ),
    );
  }

  void _onNavItemTap(BuildContext context, Routes route) {
    context.goNamed(route.name);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
