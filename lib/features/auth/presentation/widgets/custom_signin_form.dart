import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:artefacta_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_icon_bttn.dart';
import 'custom_textformfield.dart';
import 'custom_welcome_text_widget.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, builder) {},
      builder: (context, builder) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signInFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: CustomWelcomeTextWidget(
                  text: 'Welcome Back!',
                  size: 24.0,
                ),
              ),
              SizedBox(height: 48.0),
              CustomTextFormField(
                onChanged: (value) {
                  authCubit.emailAddress = value;
                },
                labelText: 'Email Address',
                prefixIcon: Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 25.0),
              CustomTextFormField(
                onChanged: (value) {
                  authCubit.password = value;
                },
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: authCubit.togglePasswordVisibility,
                  icon: authCubit.isObscure!
                      ? Icon(CupertinoIcons.eye)
                      : Icon(CupertinoIcons.eye_slash_fill),
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                obscureText: authCubit.isObscure,
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  customNavigate(context, '/forgetPassword');
                },
                child: Text(
                  'Forget Password?',
                  style: CustomTextStyles.poppins600styles12,
                ),
              ),
              SizedBox(height: 102.0),
              Align(
                alignment: Alignment.topCenter,
                child: CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    if (authCubit.signInFormKey.currentState!.validate()) {
                      authCubit.signInWithEmailAndPassword();
                    }
                  },
                ),
              ),
              SizedBox(height: 10.0),
              CustomDivider(),
              SizedBox(height: 10.0),
              Align(
                alignment: Alignment.topCenter,
                child: CustomIconButton(
                  text: 'Sign in with Google',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
