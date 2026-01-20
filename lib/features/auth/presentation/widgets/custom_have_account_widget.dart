import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomHaveAccountWidget extends StatelessWidget {
  const CustomHaveAccountWidget({
    super.key,
    required this.txt1,
    required this.txt2,
    this.onTap,
  });
  final String txt1, txt2;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          txt1,
          style: CustomTextStyles.poppins300styles16.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            color: Color(0xff6F6460),
          ),
        ),
        SizedBox(width: 8.0),
        GestureDetector(
          onTap: onTap,
          child: Text(
            txt2,
            style: CustomTextStyles.poppins300styles16.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
              color: Color(0xffB4B4B4),
            ),
          ),
        ),
      ],
    );
  }
}
