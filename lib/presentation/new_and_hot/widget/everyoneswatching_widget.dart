import 'package:flutter/material.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/widget/icon_button.dart';
import 'package:netflix_demo/presentation/widget/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          'Friends',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        kHeight,
        const Text(
          "This hit sitcom follows the merrymisadventures of six 20-something pals as the navigate the pitfalls of work, life and love in 1990s Manhattan  ",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
        ),
        kHeight50,
        const VideoWidget(
          url: kali,
        ),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            IconWidget(
              text: 'Share',
              icon: Icons.share,
              iconSize: 25,
              style: textfont10,
            ),
            IconWidget(
              text: 'My List',
              icon: Icons.add,
              iconSize: 25,
              style: textfont10,
            ),
            IconWidget(
              text: 'Play',
              icon: Icons.play_arrow,
              iconSize: 25,
              style: textfont10,
            ),
            kWidth,
          ],
        )
      ],
    );
  }
}
