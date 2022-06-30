import 'package:flutter/material.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/home/widget/tile_card/number_card/number_card.dart';

import 'package:netflix_demo/presentation/widget/title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: TitleTextWidget(title: 'Top 10 Tv Shows in India Today'),
      ),
      kHeight,
      LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
              50,
              (index) => NumberCardTile(
                    index: index,
                  )),
        ),
      ),
    ]);
  }
}
