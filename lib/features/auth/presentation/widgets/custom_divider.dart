import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Divider(
          color: AppColor.grey,
          thickness: 5,
        ),
        Text(
          'or',
          style: CustomTextStyles.poppins300styles16.copyWith(
            color: AppColor.grey,
          ),
        ),
        Divider(
          color: AppColor.grey,
          thickness: 5,
        ),
      ],
    );
  }
}
