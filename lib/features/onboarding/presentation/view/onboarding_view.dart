import 'package:artefacta_app/features/onboarding/presentation/widgets/get_buttons.dart';
import 'package:artefacta_app/features/onboarding/presentation/widgets/onboarding_body_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_navbar.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController controller = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 60.0),
            CustomNavBar(),
            SizedBox(height: 32.0),
            OnboardingBody(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            GetButtons(currentIndex: currentIndex, controller: controller),
            SizedBox(height: 35.0),
          ],
        ),
      ),
    );
  }
}
