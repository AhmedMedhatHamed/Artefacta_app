import 'package:artefacta_app/core/database/cache/cache_helpers.dart';
import 'package:artefacta_app/core/routes/app_router.dart';
import 'package:artefacta_app/core/services/service_locator.dart';
import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  setupServiceLocator();
  await getIt<CacheHelper>().init();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColor.offWhite,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
