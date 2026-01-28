import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_snackbar.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_toast.dart';
import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:artefacta_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_textformfield.dart';

class CustomSigninForm extends StatelessWidget {
  const CustomSigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit,AuthState>(
      listener: (context, state){
        if (state is SignInErrorState) {
          customShowSnackBarTwo(context, state);
        } else if (state is SignInSuccessState) {
          customToast('Account Confirmed!');
          customReplacementNavigate(context, '/homeView');
        }
      },
      builder: (context, state){
        return Form(
            key: authCubit.signInFormKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomTextFormField(
                      onChanged: (value) {
                        authCubit.emailAddress = value;
                      },
                      controller: authCubit.emailController,
                      labelText: 'Email Address',
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: const Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(height: 12.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomTextFormField(
                      onChanged: (value) {
                        authCubit.password = value;
                      },
                      controller: authCubit.passwordController,
                      obscureText: authCubit.isObscure,
                      labelText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      prefixIcon: const Icon(CupertinoIcons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          authCubit.isObscure!
                              ? CupertinoIcons.eye
                              : CupertinoIcons.eye_slash_fill,
                        ),
                        onPressed: () {
                          authCubit.togglePasswordVisibility();
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 102,),
                  state is SignInLoadingState
                      ? Align(
                    alignment: Alignment.topCenter,
                    child: CupertinoActivityIndicator(
                      color: AppColor.deepOrange,
                    ),
                  )
                      : CustomButton(
                    backgroundColor: AppColor.deepOrange,
                    text: 'Sign in',
                    onPressed: () {
                        if (authCubit.signInFormKey.currentState!
                            .validate()) {
                          authCubit.signInWithEmailAndPassword();
                        }
                      }
                  ),
                ],
              ),
            ),
        );
      },
    );
  }
}
