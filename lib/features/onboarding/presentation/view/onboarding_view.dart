import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_strings/app_strings.dart';
import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:artefacta_app/features/onboarding/presentation/model_view/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OnboardingModel> onBoardingList = [];

    return Scaffold(
      backgroundColor: AppColor.offWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 35.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 10.0,
              ),
              child: InkWell(
                onTap: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 18.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Image.asset(AppStrings.onBoarding1),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Text(
                ' Explore The history with '
                'Artefacta in a smart way',
                style: TextStyle(
                  fontSize: 17.0,
                  height: 1.3,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: const Text(
                '      Using our app’s history libraries\n '
                'you can find many historical periods',
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  height: 1.6,
                ),
              ),
            ),
            Spacer(),
            Center(
              child: CustomButton(text: 'Next', onPressed: () {}),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
