import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'I have agree to our ',
          style: CustomTextStyles.poppins300styles16.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
          ),
        ),
        Text(
           'Terms and Condition',
          style: CustomTextStyles.poppins300styles16.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            decoration: TextDecoration.underline
          ),
        ),
      ],
    );
  }
}
