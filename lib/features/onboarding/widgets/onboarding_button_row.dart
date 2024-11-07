import 'package:flutter/material.dart';
import 'package:promed_app/core/widgets/promed_outlined_button.dart';

class OnboardingButtonRow extends StatelessWidget {
  const OnboardingButtonRow({
    super.key,
    this.onSkip,
    this.onNext,
  });

  final VoidCallback? onSkip;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: onSkip,
          child: Text(
            'Pomiń',
            //style from context
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: const Color(0xFFB2B2B2),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        PromedOutlinedButton(
          onPressed: onNext,
          text: 'Dalej',
        ),
      ],
    );
  }
}
