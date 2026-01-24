import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/terms_and%20_condition_widget.dart';
import 'package:artefacta_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_snackbar.dart';
import 'package:artefacta_app/core/utils/app_functions/custom_toast.dart';
import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/core/widgets/custom_bttn.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_textformfield.dart';
import 'custom_checkbox.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthErrorState) {
          customShowSnackBar(context, state);
        } else if (state is AuthSuccessState) {
          customToast();
          customReplacementNavigate(context, '/homeView');
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signupFormKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextFormField(
                  onChanged: (value) {
                    authCubit.firstName = value;
                  },
                  controller: authCubit.firstNameController,
                  labelText: 'First Name',
                  keyboardType: TextInputType.name,
                  prefixIcon: const Icon(CupertinoIcons.person_alt_circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextFormField(
                  onChanged: (value) {
                    authCubit.lastName = value;
                  },
                  controller: authCubit.lastNameController,
                  labelText: 'Last Name',
                  keyboardType: TextInputType.name,
                  prefixIcon: const Icon(CupertinoIcons.person_alt_circle),
                ),
              ),
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
              Row(
                children: const [CustomCheckbox(), TermsAndConditionWidget()],
              ),
              const SizedBox(height: 80),
              state is AuthLoadingState
                  ? CupertinoActivityIndicator(color: AppColor.lightOrange)
                  : CustomButton(
                      backgroundColor: authCubit.isCheckBoxActive == false
                          ? Colors.grey
                          : AppColor.lightOrange,
                      text: 'Sign Up',
                      onPressed: () {
                        if (authCubit.isCheckBoxActive == true) {
                          if (authCubit.signupFormKey.currentState!
                              .validate()) {
                            authCubit.signUpWithEmailAndPassword();
                          }
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
