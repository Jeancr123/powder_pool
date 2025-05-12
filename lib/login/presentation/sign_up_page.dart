import 'package:flutter/material.dart';
import 'package:powder_pool/app_bars/presentation/auth_app_bar.dart';
import 'package:powder_pool/login/presentation/sign_up.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AuthAppBar(), body: SignUp());
  }
}
