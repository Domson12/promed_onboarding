import 'package:flutter/material.dart';

class PromedOutlinedButton extends StatelessWidget {
  const PromedOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.fontSize,
  });

  final VoidCallback? onPressed;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 10,
        ),
        backgroundColor: const Color(0xFF0768B0),
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
      ),
    );
  }
}
