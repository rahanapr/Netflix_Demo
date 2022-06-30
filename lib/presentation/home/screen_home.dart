import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_demo/core/colors/colors.dart';

import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/home/widget/background_card/background_card_widget.dart';
import 'package:netflix_demo/presentation/home/widget/tile_card/main_tilecard_widget.dart';
import 'package:netflix_demo/presentation/home/widget/tile_card/number_card/number_card_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, value, Widget? child) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                // print(direction);
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(children: const [
                    BackgroundCardWidget(),
                    kHeight,
                    MainTileCard(
                      cardTitle: 'Released in the past year',
                    ),
                    kHeight,
                    MainTileCard(cardTitle: 'Trending Now'),
                    kHeight,
                    // MainTileCard(cardTitle: 'Top 10 Tv Shows in India Today'),
                    NumberTitleCard(),
                    kHeight,

                    MainTileCard(cardTitle: 'Tense Dramas'),
                    kHeight,
                    MainTileCard(cardTitle: 'South Indian Cinema')
                  ]),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          width: double.infinity,
                          height: 80,
                          color: kBlackColor.withOpacity(.4),
                          duration: const Duration(milliseconds: 1000),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    "https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png",
                                    height: 60,
                                    width: 60,
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.cast, color: Colors.white),
                                  kWidth,
                                  Container(
                                      width: 30,
                                      height: 28,
                                      color: Colors.blue),
                                  kWidth,
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'TV Shows',
                                    style: textStyleWhite,
                                  ),
                                  Text(
                                    'Movies',
                                    style: textStyleWhite,
                                  ),
                                  Text(
                                    'Categories',
                                    style: textStyleWhite,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      : kHeight,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
