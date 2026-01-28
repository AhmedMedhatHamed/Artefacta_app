import 'package:artefacta_app/features/auth/presentation/widgets/custom_signup_form.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_welcome_text_widget.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_have_account_widget.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                SizedBox(height: 130.0),
                CustomWelcomeTextWidget(text: 'Welcome!'),
                SizedBox(height: 30.0),
                CustomSignUpForm(),
                SizedBox(height: 16.0),
                HaveAccountWidget(
                  txt1: 'Already have an account?',
                  txt2: 'Sign In',
                  onTap: () {
                    customReplacementNavigate(context, '/signIn');
                  },
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

