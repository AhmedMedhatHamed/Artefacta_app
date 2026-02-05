import 'package:artefacta_app/features/home/presentation/widgets/historical_character_item.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersListView extends StatelessWidget {
  const HistoricalCharactersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133.0,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => SizedBox(width: 16.0,),
        itemCount: 6,
        itemBuilder: (context, index) {
          return HistoricalCharacterItem(
              text: 'Saladin',
              image: 'assets/images/Salah al Din, mohamed saad 1.png',
          );
        },
      ),
    );
  }
}

