import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_have_account_widget.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_signin_form.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_welcome_text_widget.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/welcome_banner.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: WelcomeBanner()),
          SliverToBoxAdapter(child: SizedBox(height: 32.0)),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomWelcomeTextWidget(text: 'Welcome Back!'),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 38.0)),
          SliverToBoxAdapter(child: CustomSigninForm()),
          SliverToBoxAdapter(child: SizedBox(height: 16.0)),
          SliverToBoxAdapter(
            child: HaveAccountWidget(
              txt1: 'Don’t have an account?',
              txt2: 'Sign Up',
              onTap: () {
                customReplacementNavigate(context, '/signUp');
              },
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16.0)),
        ],
      ),
    );
  }
}
