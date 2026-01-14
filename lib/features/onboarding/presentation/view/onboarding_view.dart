import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:artefacta_app/features/onboarding/presentation/widgets/custom_on_boarding.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: 3,
              itemBuilder: (context, index) {
                return CustomOnBoarding(controller: controller);
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomButton(
              text: 'Next',
              onPressed: () {
                controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
          SizedBox(height: 17.0),
        ],
      ),
    );
  }
}
