import 'package:artefacta_app/core/database/cache/cache_helpers.dart';
import 'package:artefacta_app/core/services/service_locator.dart';
import 'core/utils/app_functions/auth_state_changes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/artefacta_app.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  authStateChanges();
  setupServiceLocator();
  await getIt<CacheHelper>().init();

  SystemChrome.setSystemUIOverlayStyle(
     SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(const Artefacta());
}




