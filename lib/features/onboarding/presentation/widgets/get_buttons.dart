import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:artefacta_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:artefacta_app/features/onboarding/presentation/view/functions/onboarding_visited.dart';
import 'package:flutter/material.dart';


class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required this.currentIndex,
    required this.controller,
  });

  final int? currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return currentIndex == onBoardingData.length - 1
        ? Column(
            children: [
              CustomButton(
                text: 'Create Account',
                onPressed: () {
                  onBoardingVisited();
                  customReplacementNavigate(context, '/signUp');
                },
              ),
              SizedBox(height: 16.0),
              InkWell(
                onTap: () {
                  onBoardingVisited();
                  customReplacementNavigate(context, '/signIn');
                },
                child: Text('Login Now'),
              ),
            ],
          )
        : CustomButton(
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
