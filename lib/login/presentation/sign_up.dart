import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:powder_pool/authentication/application/authentication_provider.dart';
import 'package:powder_pool/login/presentation/animated_button.dart';
import 'package:powder_pool/login/presentation/customized_input.dart';
import 'package:powder_pool/models/domain/user_model.dart';
import 'package:powder_pool/router/domain/routes.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animacaoBlur;
  Animation<double>? _animacaoFade;
  Animation<double>? _animacaoSize;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _zipCodeController = TextEditingController();
  final TextEditingController _aboutYouController = TextEditingController();
  bool submitted = false;

  @override
  void initState() {
    super.initState();

    _firstNameController.text = '';
    _lastNameController.text = '';
    _emailController.text = '';
    _passwordController.text = '';
    _zipCodeController.text = '';
    _aboutYouController.text = '';

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
            child: Container(
              color: Colors.white.withOpacity(
                0.2,
              ), // Optional: adds a soft white overlay
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500, minWidth: 300),
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
                              children: [
                                CustomizedInput(
                                  hint: 'First Name',
                                  obscure: false,
                                  icon: Icon(Icons.person_outline),
                                  controller: _firstNameController,
                                ),
                                SizedBox(height: 10),
                                CustomizedInput(
                                  hint: 'Last Name',
                                  obscure: false,
                                  icon: Icon(Icons.person_outline),
                                  controller: _lastNameController,
                                ),
                                SizedBox(height: 10),
                                CustomizedInput(
                                  hint: 'Email',
                                  obscure: false,
                                  icon: Icon(Icons.email_outlined),
                                  controller: _emailController,
                                ),
                                SizedBox(height: 10),
                                CustomizedInput(
                                  hint: 'Password',
                                  obscure: true,
                                  icon: Icon(Icons.lock_outline),
                                  controller: _passwordController,
                                ),
                                SizedBox(height: 10),
                                CustomizedInput(
                                  hint: 'Zip Code',
                                  obscure: false,
                                  icon: Icon(Icons.location_on_outlined),
                                  controller: _zipCodeController,
                                ),
                                SizedBox(height: 10),
                                CustomizedInput(
                                  hint: 'Tell others about you',
                                  obscure: false,
                                  icon: Icon(Icons.info_outline),
                                  controller: _aboutYouController,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      AnimatedButton(
                        controller: _controller!,
                        label: 'Sign Up',
                        onTap: () async {
                          setState(() {
                            submitted = true;
                          });
                          User user = User(
                            firstName: _firstNameController.text,
                            lastName: _lastNameController.text,
                            email: _emailController.text,
                            password: _passwordController.text,
                            zipCode: _zipCodeController.text,
                            aboutYou: _aboutYouController.text,
                          );

                          await ref
                              .read(authenticationProvider.notifier)
                              .signUp(user);
                          setState(() {
                            submitted = false;
                          });
                          if (context.mounted) {
                            context.goNamed(Routes.resorts.name);
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      FadeTransition(
                        opacity: _animacaoFade!,
                        child: TextButton(
                          child: Text(
                            "Already have an account? Sign in",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            context.goNamed(Routes.login.name);
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
