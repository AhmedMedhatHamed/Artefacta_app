import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordSubtitle extends StatelessWidget {
  const ForgetPasswordSubtitle({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTextStyles.poppins400styles14,
      textAlign: TextAlign.center,
    );
  }
}