import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
    required this.text,
    required this.icon,
    this.iconSize = 30,
    this.style = textStyleWhite,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final double iconSize;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconSize,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            text,
            style: style,
          ),
        )
      ],
    );
  }
}
