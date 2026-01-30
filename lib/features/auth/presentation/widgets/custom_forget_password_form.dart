import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_toast.dart';
import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:artefacta_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_textformfield.dart';

class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is ForgetPasswordSuccessState){
          customToast('Please Check Your Email Messages!',);
          customReplacementNavigate(context, '/signIn');
        }else if(state is ForgetPasswordErrorState){
          customToast('Sorry you can try this in another time!');
        }
      },
      builder: (context, state) {
        return Form(
          key: authCubit.forgetPasswordFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                CustomTextFormField(
                  onChanged: (value) {
                    authCubit.emailAddress = value;
                  },
                  controller: authCubit.emailController,
                  labelText: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
                SizedBox(height: 120.0),
                state is SignInLoadingState
                    ? Align(
                        alignment: Alignment.topCenter,
                        child: CupertinoActivityIndicator(
                          color: AppColor.deepOrange,
                        ),
                      )
                    : CustomButton(
                        backgroundColor: AppColor.deepOrange800,
                        text: 'Send link to reset password',
                        onPressed: () {
                          if (authCubit.forgetPasswordFormKey.currentState!
                              .validate()) {
                            authCubit.sendPasswordResetEmail();
                          }
                        },
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
