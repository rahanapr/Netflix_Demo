import 'package:flutter/material.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/widget/icon_button.dart';
import 'package:netflix_demo/presentation/widget/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        kHeight,
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'FEB',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  '11',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4),
                )
              ]),
        ),
        SizedBox(
            width: size.width - 50,
            height: 440,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VideoWidget(
                  url: minnalmurali,
                ),
                kHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Minnal Murali',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        letterSpacing: -2,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: const [
                        IconWidget(
                            text: 'Remind Me',
                            iconSize: 20,
                            style: textfont10,
                            icon: Icons.notifications),
                        IconWidget(
                            text: 'info',
                            iconSize: 20,
                            style: textfont10,
                            icon: Icons.info),
                      ],
                    ),
                    kWidth,
                  ],
                ),
                const Text("Coming on friday"),
                kHeight,
                const Text("❤netflix"),
                const Text(
                  'Minnal Murali',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                kHeight,
                const Text(
                  "Tovino Thomas, who plays Jaison aka Minnal Murali brings the much-needed innocence to the character. But at the same time, he pulls off the superhero part with much ease.Jaison, a young tailor, gains superpowers after being struck by lightning. However, he must thwart the evil intentions of an unexpected adversary to become the superhero that his rural village needs.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey),
                ),
              ],
            )),
      ],
    );
  }
}
