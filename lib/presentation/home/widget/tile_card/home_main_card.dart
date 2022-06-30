import 'package:flutter/material.dart';

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      width: 140,
      // height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://lumiere-a.akamaihd.net/v1/images/p_thenutcrackerandthefourrealms_19871_32e84c89.jpeg"),
          )),
    );
  }
}
