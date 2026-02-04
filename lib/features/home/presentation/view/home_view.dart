import 'package:artefacta_app/core/widgets/custom_header.dart';
import 'package:artefacta_app/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:artefacta_app/features/home/presentation/widgets/historical_characters_list_view.dart';
import 'package:artefacta_app/features/home/presentation/widgets/historical_periods.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 72.0)),
            const SliverToBoxAdapter(child: CustomAppBarWidget()),
            const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
            const SliverToBoxAdapter(
              child: CustomHeader(text: 'Historical periods'),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            const SliverToBoxAdapter(child: HistoricalPeriods()),
            const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
            const SliverToBoxAdapter(
              child: CustomHeader(text: 'Historical Characters'),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 133.0,
                child: HistoricalCharactersListView(),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
            const SliverToBoxAdapter(
              child: CustomHeader(text: 'Ancient Wars'),
            ),
          ],
        ),
      ),
    );
  }
}





