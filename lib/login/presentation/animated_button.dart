import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;

  AnimationController controller;
  Animation<double> largura;
  Animation<double> altura;
  Animation<double> radius;
  Animation<double> opacidade;

  AnimatedButton({
    super.key,
    this.onTap,
    required this.controller,
    required this.label,
  }) : largura = Tween<double>(begin: 0, end: 500).animate(
         CurvedAnimation(parent: controller, curve: const Interval(0.0, 0.5)),
       ),
       altura = Tween<double>(begin: 0, end: 50).animate(
         CurvedAnimation(parent: controller, curve: const Interval(0.5, 0.7)),
       ),
       radius = Tween<double>(begin: 0, end: 20).animate(
         CurvedAnimation(parent: controller, curve: const Interval(0.6, 1.0)),
       ),
       opacidade = Tween<double>(begin: 0, end: 1).animate(
         CurvedAnimation(parent: controller, curve: const Interval(0.6, 0.8)),
       );

  Widget _buildAnimation(BuildContext context, Widget? widget) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        width: largura.value,
        height: altura.value,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius.value),
          gradient: LinearGradient(
            colors: [
              Colors.cyan.shade400, // cyna with shade 500
              Colors.cyan.shade600, // cyna with shade 600
            ],
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: opacidade,
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }
}
