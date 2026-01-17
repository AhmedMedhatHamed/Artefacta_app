import 'package:artefacta_app/features/auth/presentation/view/sign_in.dart';
import 'package:artefacta_app/features/auth/presentation/view/sign_up.dart';
import 'package:artefacta_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:artefacta_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: '/signIn',
      builder: (context, state) => const SignIn(),
    ),
    GoRoute(
      path: '/signUp',
      builder: (context, state) => const SignUp(),
    ),
  ],
);