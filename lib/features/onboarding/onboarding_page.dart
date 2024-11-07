import 'package:flutter/material.dart';
import 'package:promed_app/core/utils/lists.dart';
import 'package:promed_app/core/widgets/promed_outlined_button.dart';
import 'package:promed_app/features/onboarding/widgets/onboarding_button_row.dart';
import 'package:promed_app/features/onboarding/widgets/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    int totalPages = PromedAppLists.images.length;
    return Scaffold(
      backgroundColor: const Color(0xFF2A71AC),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: PageView.builder(
                          controller: controller,
                          itemCount: totalPages,
                          onPageChanged: (int page) {
                            setState(() {
                              currentPage = page;
                            });
                          },
                          itemBuilder: (context, index) {
                            return OnboardingItem(
                              onboardingRichText:
                                  PromedAppLists.richText[index],
                              image: PromedAppLists.images[index],
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: currentPage == totalPages - 1
                          ? PromedOutlinedButton(
                              onPressed: () {
                                //TODO: Navigate to next page
                              },
                              text: "Zaczynajmy!",
                              fontSize: 20,
                            )
                          : OnboardingButtonRow(
                              onNext: () {
                                controller.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              onSkip: () {
                                controller.jumpToPage(
                                    PromedAppLists.images.length - 1);
                              },
                            ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
