import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_have_account_widget.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_navbar.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_signin_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColor.deepOrange,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          CustomDesign(),
          SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomSignInForm(),
                SizedBox(height: 12.0),
                HaveAccountWidget(
                  txt1: 'Don’t have an account?',
                  txt2: 'Sign Up',
                  onTap: () {
                    customReplacementNavigate(context, '/signUp');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
