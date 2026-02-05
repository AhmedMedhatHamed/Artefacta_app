import 'package:artefacta_app/core/widgets/custom_header.dart';
import 'package:artefacta_app/features/home/presentation/widgets/historical_characters_list_view.dart';
import 'package:flutter/material.dart';

class HistoricalCharacterSection extends StatelessWidget {
  const HistoricalCharacterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeader(text: 'Historical Characters'),
        SizedBox(height: 16.0),
        HistoricalCharactersListView(),
        SizedBox(height: 32.0),
      ],
    );
  }
}