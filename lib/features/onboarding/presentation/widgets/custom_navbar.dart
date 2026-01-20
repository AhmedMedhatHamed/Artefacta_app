import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:artefacta_app/features/onboarding/presentation/view/functions/onboarding_visited.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          onBoardingVisited();
          customReplacementNavigate(context, '/signIn',);
        },
        child: Text(
          'Skip',
          style: CustomTextStyles.pacifico400styles64.copyWith(
            fontSize: 16.0,
            fontFamily: 'poppins',
            color: AppColor.lightOrange,
          ),
        ),
      ),
    );
  }
}