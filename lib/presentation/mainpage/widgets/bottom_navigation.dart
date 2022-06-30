import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              currentIndex: newIndex,
              elevation: 0,
              onTap: (index) {
                indexChangeNotifier.value = index;
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedIconTheme: const IconThemeData(color: Colors.white),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_sharp), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.video_collection_sharp),
                    label: "New & Hot"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions_sharp),
                    label: "Fast Laugh"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_sharp), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_downward_sharp), label: "Downloads"),
              ]);
        });
  }
}
