import 'package:artefacta_app/core/database/cache/cache_helpers.dart';
import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/text_styles/text_styles.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          CacheHelper().saveData(key: 'isOnBoardingVisited', value: true);
          customReplacementNavigate(context, '/signIn',);
        },
        child: Text(
          'Skip',
          style: CustomTextStyles.pacifico400styles64.copyWith(
            fontSize: 16.0,
            fontFamily: 'poppins',
            color: AppColor.lightOrange,
          ),
        ),
      ),
    );
  }
}