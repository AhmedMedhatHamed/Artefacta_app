import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void customToast() {
  Fluttertoast.showToast(
    msg: 'Account Created Successfully',
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    backgroundColor: AppColor.primaryColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
