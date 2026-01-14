import 'package:artefacta_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:artefacta_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return SplashView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/OnboardingView',
          builder: (BuildContext context, GoRouterState state) {
            return OnboardingView();
          },
        ),
      ],
    ),
  ],
);