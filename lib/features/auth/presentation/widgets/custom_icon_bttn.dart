import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, this.text, this.onPressed});
  final String? text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.offWhite,
        minimumSize: Size(343.0, 56.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30.0),
        ),
      ),
      onPressed: onPressed,
      icon:  Icon(
        FontAwesomeIcons.google,
        color: AppColor.lightOrange,
      ),
      label: Text(
        text!,
        style: CustomTextStyles.poppins500styles24.copyWith(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
