import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_demo/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(title,
            style: GoogleFonts.montserrat(
                fontSize: 28, fontWeight: FontWeight.bold)),
        //.copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
        const Spacer(),
        const Icon(Icons.cast, color: Colors.white),
        kWidth,
        Container(width: 30, height: 28, color: Colors.blue),
        kWidth,
      ],
    );
  }
}
