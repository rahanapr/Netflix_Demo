import 'package:flutter/material.dart';

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {Key? key,
      required this.imageList,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radius = 10})
      : super(key: key);
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        margin: margin,
        width: size.width, // size.width * 0.4
        height: size.height, // size.width * 0.5
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageList,
                ))),
      ),
    );
  }
}
