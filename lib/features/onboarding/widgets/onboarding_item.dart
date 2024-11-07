import 'package:flutter/material.dart';
import 'package:promed_app/features/onboarding/widgets/onboarding_rich_text.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.onboardingRichText,
    required this.image,
  });

  final OnboardingRichText onboardingRichText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: onboardingRichText,
        ),
        Flexible(
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
