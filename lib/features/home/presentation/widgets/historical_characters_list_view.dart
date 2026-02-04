import 'package:artefacta_app/features/home/presentation/widgets/historical_character_item.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersListView extends StatelessWidget {
  const HistoricalCharactersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:  BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children:  [
        HistoricalCharacterItem(
          text: 'Lionheart',
          image: 'assets/images/800px-Richard_coeur_de_lion 1.png',
        ),
        SizedBox(width: 16.0,),
        HistoricalCharacterItem(
          text: 'Napoleon',
          image:
          'assets/images/Painting_of_Napoleon_Bonaparte_by_Jacques-Louis_David,_1813 1.png',
        ),
        SizedBox(width: 16.0,),

        HistoricalCharacterItem(
          text: 'Saladin',
          image: 'assets/images/Salah al Din, mohamed saad 1.png',
        ),
        SizedBox(width: 16.0,),

        HistoricalCharacterItem(
          text: 'Qianlong',
          image:
          'assets/images/Portrait_of_the_Qianlong_Emperor_in_Court_Dress 1.png',
        ),
      ],
    );
  }
}