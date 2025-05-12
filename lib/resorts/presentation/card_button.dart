import 'package:flutter/material.dart';

class ScheduleCarpoolLink extends StatelessWidget {
  final VoidCallback onTap;

  const ScheduleCarpoolLink({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Schedule Carpool',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.cyan.shade600,
              ),
            ),
            const SizedBox(width: 6),
            Icon(Icons.arrow_forward, size: 18, color: Colors.cyan.shade600),
          ],
        ),
      ),
    );
  }
}
