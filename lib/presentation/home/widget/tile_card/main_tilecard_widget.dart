import 'package:flutter/material.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/home/widget/tile_card/home_main_card.dart';
import 'package:netflix_demo/presentation/widget/title.dart';

class MainTileCard extends StatelessWidget {
  const MainTileCard({
    Key? key,
    required this.cardTitle,
  }) : super(key: key);
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TitleTextWidget(title: cardTitle),
      ),
      kHeight,
      LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(200, (index) => const HomeMainCard()),
        ),
      ),
    ]);
  }
}
