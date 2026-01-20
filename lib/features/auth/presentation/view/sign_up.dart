import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_checkbox.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_have_account_widget.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_textformfield.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_welcome_text_widget.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/terms_and%20_condition_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? firstNameController = TextEditingController();
    TextEditingController? lastNameController = TextEditingController();
    TextEditingController? emailController = TextEditingController();
    TextEditingController? passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                SizedBox(height: 152.0),
                CustomWelcomeTextWidget(text: 'Welcome !'),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomTextFormField(
                    controller: firstNameController,
                    labelText: 'First Name',
                    keyboardType: TextInputType.name,
                    prefixIcon: Icon(CupertinoIcons.person_alt_circle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomTextFormField(
                    controller: lastNameController,
                    labelText: 'Last Name',
                    keyboardType: TextInputType.name,
                    prefixIcon: Icon(CupertinoIcons.person_alt_circle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomTextFormField(
                    controller: emailController,
                    labelText: 'Email Address',
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomTextFormField(
                    obscureText: true,
                    controller: passwordController,
                    labelText: 'Password',
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    prefixIcon: Icon(CupertinoIcons.lock),
                    suffixIcon: Icon(CupertinoIcons.eye),
                  ),
                ),
                Row(children: [CustomCheckbox(), TermsAndConditionWidget()]),
                SizedBox(height: 80.0),
                CustomButton(text: 'Sign Up', onPressed: () {}),
                SizedBox(height: 16.0),
                CustomHaveAccountWidget(
                  txt1: 'Already have an account?',
                  txt2: 'Sign In',
                  onTap: () {
                    customReplacementNavigate(context, '/signIn');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
