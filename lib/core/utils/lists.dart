import 'package:promed_app/features/onboarding/widgets/onboarding_rich_text.dart';
import 'package:promed_app/gen/assets.gen.dart';

abstract class PromedAppLists {
  static List<String> images = [
    Assets.images.onboarding1.path,
    Assets.images.onboarding2.path,
    Assets.images.onboarding3.path,
    Assets.images.onboarding4.path,
    Assets.images.onboarding5.path,
    Assets.images.onboarding6.path,
  ];
  static List<OnboardingRichText> richText = [
    OnboardingRichText(
      text: 'Spędzaj czas \n',
      boldText: 'kreatywnie!',
      isBoldFirst: false,
    ),
    OnboardingRichText(
      text: 'w wydarzeniach!',
      boldText: 'Bierz udział\n',
      isBoldFirst: true,
    ),
    OnboardingRichText(
      text: 'Poznawaj \n nieodkryte ',
      boldText: 'szlaki!',
      isBoldFirst: false,
    ),
    OnboardingRichText(
      text: 'Ustawiaj \n',
      boldText: 'przypomnienia!',
      isBoldFirst: false,
    ),
    OnboardingRichText(
      text: 'Bądź ',
      boldText: 'na bieżąco!',
      isBoldFirst: false,
    ),
    OnboardingRichText(
      text: 'Złap ',
      boldText: 'swój rytm!',
      isBoldFirst: false,
    ),
  ];
}
