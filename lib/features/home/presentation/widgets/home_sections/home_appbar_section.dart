import 'package:artefacta_app/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeAppBarSection extends StatelessWidget {
  const HomeAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.0),
        CustomAppBarWidget(),
        SizedBox(height: 32.0),
      ],
    );
  }
}