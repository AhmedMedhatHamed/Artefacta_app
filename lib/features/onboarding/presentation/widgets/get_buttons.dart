import 'package:flutter/material.dart';

import '../../../../core/utils/app_functions/custom_navigate.dart';
import '../../../../core/widgets/custom_bttn.dart';
import '../../data/models/onboarding_model.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({super.key,required this.currentIndex,required this.controller});

 final int? currentIndex;
 final PageController controller;
  @override
  Widget build(BuildContext context) {
    return currentIndex == onBoardingData.length - 1?
    Column(
      children: [
        CustomButton(
          text: 'Create Account',
          onPressed: () {
            customReplacementNavigate(context, '/signUp');
          },
        ),
        SizedBox(height: 16.0),
        InkWell(
          onTap: () {
            customReplacementNavigate(context, '/signIn');
          },
          child: Text('Login Now'),
        ),
      ],
    ):
    CustomButton(
    text: 'Next',
    onPressed: () {
      controller.nextPage(
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeInOut,
    );
    },
    );
  }
}
