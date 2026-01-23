import 'package:artefacta_app/core/routes/app_router.dart';
import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Artefacta extends StatelessWidget {
  const Artefacta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Artefacta_app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: AppColor.offWhite,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0.0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      routerConfig: router,
    );
  }
}