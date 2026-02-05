import 'package:artefacta_app/core/widgets/custom_header.dart';
import 'package:artefacta_app/features/home/presentation/widgets/ancient_wars.dart';
import 'package:flutter/material.dart';

class AncientWarSection extends StatelessWidget {
  const AncientWarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeader(text: 'Ancient Wars'),
        SizedBox(height: 16.0),
        AncientWars(),
      ],
    );
  }
}
