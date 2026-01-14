import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles{
  static final pacifico400styles64 = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w400,
    color: AppColor.deepOrange,
    fontFamily: 'Pacifico',
  );
  static final poppins500styles24 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: 'Poppins',
  );
  static final poppins300styles16 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w300,
    color: Colors.black,
    fontFamily: 'Poppins',
  );
}