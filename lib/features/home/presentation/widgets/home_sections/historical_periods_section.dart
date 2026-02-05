import 'package:artefacta_app/core/widgets/custom_header.dart';
import 'package:artefacta_app/features/home/presentation/widgets/historical_periods.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeader(text: 'Historical periods'),
        SizedBox(height: 16.0),
        HistoricalPeriods(),
        SizedBox(height: 32.0),
      ],
    );
  }
}