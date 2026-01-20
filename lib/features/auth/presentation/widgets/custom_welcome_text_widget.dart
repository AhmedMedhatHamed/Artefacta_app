import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomWelcomeTextWidget extends StatelessWidget {
  const CustomWelcomeTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTextStyles.poppins500styles24.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
      ),
    );
  }
}
