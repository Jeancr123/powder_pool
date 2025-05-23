import 'package:flutter/material.dart';

class CustomizedInput extends StatelessWidget {
  const CustomizedInput({
    super.key,
    required this.hint,
    required this.controller,
    this.obscure = false,
    this.icon = const Icon(Icons.person),
  });

  final String hint;
  final TextEditingController controller;
  final bool obscure;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          icon: icon,
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }
}
