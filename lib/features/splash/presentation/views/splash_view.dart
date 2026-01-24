import 'package:artefacta_app/core/services/service_locator.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/core/database/cache/cache_helpers.dart';
import 'package:artefacta_app/core/utils/app_strings/app_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _controller.forward();

    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: 'isOnBoardingVisited') ?? false;
    FirebaseAuth.instance.currentUser == null
        ? customReplacementNavigate(context, '/signUp')
        : customReplacementNavigate(context, '/homeView');

    if (isOnBoardingVisited == true) {
      Timer(const Duration(seconds: 5), () {
        customReplacementNavigate(context, '/signUp');
      });
    } else {
      Timer(const Duration(seconds: 5), () {
        customReplacementNavigate(context, '/onBoarding');
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppStrings.appName,
                  style: CustomTextStyles.pacifico400styles64,
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'History meets marketplace',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
