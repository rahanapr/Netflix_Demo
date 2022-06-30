import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';

class NumberCardTile extends StatelessWidget {
  const NumberCardTile({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://lumiere-a.akamaihd.net/v1/images/p_thenutcrackerandthefourrealms_19871_32e84c89.jpeg"),
                ),
              ),
            )
          ],
        ),
        Positioned(
          left: 7,
          bottom: -25,
          child: BorderedText(
            strokeColor: Colors.white,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                fontSize: 120,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
