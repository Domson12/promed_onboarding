import 'package:flutter/material.dart';

class OnboardingRichText extends StatelessWidget {
  const OnboardingRichText({
    super.key,
    required this.text,
    required this.boldText,
    required this.isBoldFirst,
  });

  final String text;
  final String boldText;
  final bool isBoldFirst;

  @override
  Widget build(BuildContext context) {
    const TextStyle styleBold = TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: isBoldFirst ? boldText : text,
            style: isBoldFirst ? styleBold : null,
          ),
          TextSpan(
            text: isBoldFirst ? text : boldText,
            style: isBoldFirst ? null : styleBold,
          ),
        ],
      ),
    );
  }
}
