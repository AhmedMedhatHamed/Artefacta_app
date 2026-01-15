import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:artefacta_app/features/onboarding/presentation/widgets/onboarding_body_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_navbar.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 60.0,),
            CustomNavBar(),
            SizedBox(height: 32.0,),
            OnboardingBody(controller: controller),
            CustomButton(
              text: 'Next',
              onPressed: () {
                controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            SizedBox(height: 35.0),
          ],
        ),
      ),
    );
  }
}
