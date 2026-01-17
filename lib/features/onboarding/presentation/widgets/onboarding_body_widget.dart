import 'package:artefacta_app/core/text_styles/text_styles.dart';
import 'package:artefacta_app/core/utils/app_strings/app_strings.dart';
import 'package:artefacta_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'custom_page_indicator.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: 3,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290.0,
                width: 343.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingData[index].image,),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              CustomSmoothIndicator(controller: controller),
              const SizedBox(height: 32.0),
              Text(
                onBoardingData[index].text,
                style: CustomTextStyles.poppins500styles24,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(height: 16.0),
              Text(
                onBoardingData[index].subText,
                style: CustomTextStyles.poppins300styles16,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
