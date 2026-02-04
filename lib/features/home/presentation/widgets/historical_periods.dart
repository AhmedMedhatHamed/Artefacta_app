import 'package:flutter/material.dart';

import 'historical_period_item.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriodItem(
          text: 'Ancient\nEgypt',
          image: 'assets/images/Frame 27.png',
        ),
        HistoricalPeriodItem(
          text: 'Islamic\nEra',
          image: 'assets/images/Frame2.png',
        ),
      ],
    );
  }
}
