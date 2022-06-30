import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            url,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: kBlackColor.withOpacity(0.5),
            radius: 22,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_off_rounded,
                  color: kWhiteColor,
                )),
          ),
        ),
      ],
    );
  }
}
