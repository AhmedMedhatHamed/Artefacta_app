import 'package:artefacta_app/core/utils/app_strings/app_strings.dart';
import 'package:flutter/material.dart';

class ForgetPasswordImage extends StatelessWidget {
  const ForgetPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235.0,
      width: 235.0,
      child: Image.asset(AppStrings.forgetPassword),
    );
  }
}