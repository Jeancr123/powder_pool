import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:powder_pool/login/presentation/animated_button.dart';
import 'package:powder_pool/login/presentation/customized_input.dart';
import 'package:powder_pool/router/domain/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animacaoBlur;
  Animation<double>? _animacaoFade;
  Animation<double>? _animacaoSize;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animacaoBlur = Tween<double>(
      begin: 20,
      end: 0,
    ).animate(CurvedAnimation(parent: _controller!, curve: Curves.ease));

    _animacaoFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller!, curve: Curves.easeInOutQuint),
    );

    _animacaoSize = Tween<double>(
      begin: 0,
      end: 500,
    ).animate(CurvedAnimation(parent: _controller!, curve: Curves.decelerate));

    _controller?.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(1),
                // adjust darkness here
                BlendMode.darken,
              ),
              child: Image.asset(
                "images/background.png",
                fit: BoxFit.cover,
                alignment:
                    Alignment.topCenter, // You can also tweak positioning
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: _animacaoBlur!.value,
              sigmaY: _animacaoBlur!.value,
            ),
            child: Container(color: Colors.white.withOpacity(0.2)),
          ),
          Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500, minWidth: 300),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedBuilder(
                        animation: _animacaoSize!,
                        builder: (context, widget) {
                          return Container(
                            width: _animacaoSize?.value,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 80,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Column(
                              children: const [
                                CustomizedInput(
                                  hint: 'Email',
                                  obscure: false,
                                  icon: Icon(Icons.email_outlined),
                                ),
                                SizedBox(height: 10),
                                CustomizedInput(
                                  hint: 'Password',
                                  obscure: true,
                                  icon: Icon(Icons.lock_outline),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      AnimatedButton(controller: _controller!, label: 'Login'),
                      const SizedBox(height: 10),
                      FadeTransition(
                        opacity: _animacaoFade!,
                        child: TextButton(
                          child: Text(
                            "New to PowderPool? Sign Up",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            context.goNamed(Routes.signUp.name);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
