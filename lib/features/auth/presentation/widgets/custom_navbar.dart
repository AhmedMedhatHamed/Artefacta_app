import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_strings/app_strings.dart';
import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDesign extends StatelessWidget {
  const CustomDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 290.0,
      decoration: BoxDecoration(color: AppColor.deepOrange),
      child: Stack(
        children: [
          Center(
            child: Text(
              AppStrings.appName,
              style: CustomTextStyles.saira700styles32,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset('assets/images/Vector.svg'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset('assets/images/Vector(1).svg'),
          ),
        ],
      ),
    );
  }
}
