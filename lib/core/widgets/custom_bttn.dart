import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';

import '../utils/text_styles/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton
      ({super.key,
        required this.text,
        required this.onPressed,
      });

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.lightOrange,
        minimumSize: Size(343.0, 56.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: CustomTextStyles.poppins500styles24.copyWith(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
