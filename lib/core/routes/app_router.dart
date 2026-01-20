import 'package:artefacta_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:artefacta_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:artefacta_app/features/splash/presentation/views/splash_view.dart';
import 'package:artefacta_app/features/auth/presentation/view/sign_in_view.dart';
import 'package:artefacta_app/features/auth/presentation/view/sign_up_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      builder: (context, state) =>
          BlocProvider(
            create: (context) => AuthCubit(),
            child: SignIn(),
          ),
    ),
    GoRoute(
      path: '/signUp',
      builder: (context, state) =>  BlocProvider(
        create : (context) => AuthCubit(),
          child: SignUp()),
    ),
  ],
);