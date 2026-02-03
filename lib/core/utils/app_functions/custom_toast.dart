import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void customToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 4,
    backgroundColor: AppColor.offWhite,
    textColor: Colors.black,
    fontSize: 16.0,
    fontAsset: 'Poppins',
  );
}
