import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
  }
}
