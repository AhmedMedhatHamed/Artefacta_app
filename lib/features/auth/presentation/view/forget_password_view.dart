import 'package:artefacta_app/features/auth/presentation/widgets/custom_forget_password_form.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/custom_welcome_text_widget.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/forget_pass_subtitle.dart';
import 'package:artefacta_app/features/auth/presentation/widgets/forget_password_image.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 108.0)),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.topCenter,
              child: CustomWelcomeTextWidget(
                text: 'Forgot Password',
                size: 24.0,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 40.0)),
          SliverToBoxAdapter(child: ForgetPasswordImage()),
          SliverToBoxAdapter(child: SizedBox(height: 24.0)),
          SliverToBoxAdapter(
            child: ForgetPasswordSubtitle(
              text:
                  'Enter your registered email below to receive\npassword reset instruction',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 41.0)),
          SliverToBoxAdapter(child: CustomForgetPasswordForm()),
        ],
      ),
    );
  }
}
