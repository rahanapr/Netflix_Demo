import 'package:flutter/material.dart';

import 'package:netflix_demo/presentation/downloads/screen_downloads.dart';

import 'package:netflix_demo/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_demo/presentation/home/screen_home.dart';
import 'package:netflix_demo/presentation/mainpage/widgets/bottom_navigation.dart';
import 'package:netflix_demo/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_demo/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);
  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
   const ScreenFastLaugh(),
   const ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          }),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
