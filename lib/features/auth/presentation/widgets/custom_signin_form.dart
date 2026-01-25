import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_snackbar.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_toast.dart';
import 'package:artefacta_app/core/utils/text_styles/text_styles.dart';
import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:artefacta_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_textformfield.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is AuthErrorState){
          customShowSnackBar(context, state);
        } else if(state is AuthSuccessState){
          customToast('Account confirmed!');
          customReplacementNavigate(context, '/homeView');
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signInFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTextFormField(
                onChanged: (value) {
                  authCubit.emailAddress = value;
                },
                controller: authCubit.emailController,
                labelText: 'Email Address',
                prefixIcon: Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 25.0),
              CustomTextFormField(
                onChanged: (value) {
                  authCubit.password = value;
                },
                controller: authCubit.passwordController,
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
              state is AuthLoadingState?
              CupertinoActivityIndicator(color: AppColor.lightOrange):
              Align(
                alignment: Alignment.topCenter,
                child: CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    if (authCubit.signInFormKey.currentState!.validate()) {
                      authCubit.signInWithEmailAndPassword();
                      customReplacementNavigate(context, '/homeView',);
                    }
                  },
                ),
              ),
              // CustomDivider(),
              // SizedBox(height: 10.0),
              // Align(
              //   alignment: Alignment.topCenter,
              //   child: CustomIconButton(
              //     text: 'Sign in with Google',
              //     onPressed: () {},
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }
}
