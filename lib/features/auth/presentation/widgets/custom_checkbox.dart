import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
   bool? isActive = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.topLeft,
      child: Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(4.0,),),
        side: BorderSide(color: AppColor.grey,),
        activeColor: AppColor.primaryColor,
        value: isActive,
        onChanged: (value) {
          setState(() {
            isActive = value;
          });
        },
      ),
    );
  }
}
