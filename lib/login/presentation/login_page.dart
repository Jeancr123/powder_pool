import 'package:flutter/material.dart';
import 'package:powder_pool/app_bars/presentation/unauthenticated.dart';
import 'package:powder_pool/login/presentation/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AuthAppBar(), body: Login());
  }

  void _onNavItemTap(String route) {
    // Handle navigation logic here
    print('Navigating to $route');
  }
}
