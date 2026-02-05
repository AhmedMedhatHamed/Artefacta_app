import 'package:artefacta_app/features/home/presentation/widgets/home_sections/ancient_war_section.dart';
import 'package:artefacta_app/features/home/presentation/widgets/home_sections/historical_character_section.dart';
import 'package:artefacta_app/features/home/presentation/widgets/home_sections/historical_periods_section.dart';
import 'package:artefacta_app/features/home/presentation/widgets/home_sections/home_appbar_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: HomeAppBarSection()),
            SliverToBoxAdapter(child: HistoricalPeriodsSection()),
            SliverToBoxAdapter(child: HistoricalCharacterSection()),
            SliverToBoxAdapter(child: AncientWarSection()),
          ],
        ),
      ),
    );
  }
}