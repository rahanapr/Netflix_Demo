import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/widget/title.dart';

const imageUrl =
    'https://c4.wallpaperflare.com/wallpaper/228/471/829/maleficent-2014-movie-maleficent-poster-wallpaper-thumb.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const TitleTextWidget(
        title: 'Top Searches',
      ),
      kHeight,
      Expanded(
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => TopSearchItemTile(),
            separatorBuilder: (ctx, index) => const SizedBox(height: 20),
            itemCount: 10),
      )
    ]);
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          )),
        ),
        kWidth,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
              color: kWhiteColor, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            child: Icon(
              Icons.play_circle_outline,
              size: 50,
            ),
          ),
        ),
      ],
    );
  }
}
