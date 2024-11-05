import 'package:flutter/material.dart';
import 'package:promed_app/core/widgets/dynamic_page_view.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DynamicPageView(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.network(
                      'https://picsum.photos/200/300',
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ],
                );
              },
              controller: controller,
              onPageChanged: (index) {},
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Dalej'),
            ),
          ],
        ),
      ),
    );
  }
}
