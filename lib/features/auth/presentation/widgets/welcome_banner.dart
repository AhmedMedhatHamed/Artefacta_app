import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_strings/app_strings.dart';
import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 290.0,
      decoration: BoxDecoration(
        color: AppColor.deepOrange,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppStrings.appName,
            style: CustomTextStyles.saira700styles32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset('assets/images/Vector.svg'),
              SvgPicture.asset('assets/images/Vector(1).svg'),
            ],
          ),
        ],
      ),
    );
  }
}