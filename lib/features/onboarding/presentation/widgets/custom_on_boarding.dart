import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_strings/app_strings.dart';
import 'package:artefacta_app/features/onboarding/presentation/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../core/text_styles/text_styles.dart';

class CustomOnBoarding extends StatelessWidget {
  const CustomOnBoarding({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.offWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,),
        child: Column(
          children: [
            SizedBox(height: 40.0,),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Skip',
                  style: CustomTextStyles.pacifico400styles64.copyWith(
                    fontSize: 16.0,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Image.asset(AppStrings.onBoarding1),
            SizedBox(height: 24.0),
            CustomSmoothIndicator(controller: controller),
            SizedBox(height: 32.0),
            Text(
              'Explore The history with\nArtefacta in a smart way',
              style: CustomTextStyles.poppins500styles24,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text(
              'Using our app’s history libraries\nyou can find many historical periods ',
              style: CustomTextStyles.poppins300styles16,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
