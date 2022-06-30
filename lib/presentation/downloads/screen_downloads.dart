import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/downloads/widgets/download_image_widget.dart';
import 'package:netflix_demo/presentation/widget/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: AppBarWidget(
              title: "Downloads",
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return _widgetList[index];
          },
          itemCount: _widgetList.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 25,
            );
          },
        ),
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
              color: kButtonColorblue,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Set Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ),
        kHeight,
        MaterialButton(
            color: kButtonColorWhite,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'See what you can download',
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final List imageList = [
    "https://lumiere-a.akamaihd.net/v1/images/p_encanto_homeent_22359_4892ae1c.jpeg",
    "https://lumiere-a.akamaihd.net/v1/images/p_aladdin2019_17638_d53b09e6.jpeg",
    "https://lumiere-a.akamaihd.net/v1/images/p_thenutcrackerandthefourrealms_19871_32e84c89.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: kWhiteColor),
        ),
        kHeight,
        const Text(
          'We\'ll download a personalized selection of \n'
          'movies and shows for you, so there\'s \nalways'
          'something to watch on your\n device. ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        SizedBox(
            width: size.width,
            height: size.height * .45,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: size.width * 0.35,
                ),
                DownloadImageWidget(
                  angle: 20 * pi / 180,
                  imageList: imageList[0],
                  margin: const EdgeInsets.only(left: 170, bottom: 30),
                  size: Size(size.width * 0.3, size.width * 0.5),
                ),
                DownloadImageWidget(
                  angle: -20 * pi / 180,
                  imageList: imageList[1],
                  margin: const EdgeInsets.only(right: 170, bottom: 30),
                  size: Size(size.width * 0.3, size.width * 0.5),
                ),
                DownloadImageWidget(
                  imageList: imageList[2],
                  margin: const EdgeInsets.only(
                    bottom: 0,
                  ),
                  size: Size(size.width * 0.35, size.width * 0.55),
                ),
              ],
            )),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        kWidth,
        Text('Smart Downloads'),
      ],
    );
  }
}
