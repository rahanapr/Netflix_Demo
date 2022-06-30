import 'package:flutter/material.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/widget/title.dart';

const imageUrl =
    "https://lumiere-a.akamaihd.net/v1/images/p_encanto_homeent_22359_4892ae1c.jpeg";

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const TitleTextWidget(
        title: 'Movies & Tv',
      ),
      kHeight,
      Expanded(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1 / 1.4,
          children: List.generate(
            20,
            (index) => const MainCard(),
          ),
        ),
      )
    ]);
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
