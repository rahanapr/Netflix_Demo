import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/widget/icon_button.dart';

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 520,
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(networkImage),
          )),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const IconWidget(
                text: 'My List',
                icon: Icons.add,
              ),
              // _playButton(),
              TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kWhiteColor),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    color: kBlackColor,
                    size: 30,
                  ),
                  label: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Play",
                      style: textStyleBlack,
                    ),
                  )),
              const IconWidget(
                text: 'info',
                icon: Icons.info_outline,
              ),
            ],
          ),
        )
      ],
    );
  }
}
