
import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class HistoricalCharacterItem extends StatelessWidget {
  const HistoricalCharacterItem({
    super.key,
    required this.text,
    required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74.0,
      height: 133.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: AppColor.grey,
            blurRadius: 5,
            offset:  Offset(0, 2.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 96.0,
            width: 74.0,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 11.0),
          Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.poppins500styles16.copyWith(
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}