import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/new_and_hot/widget/comingsoon_widget.dart';
import 'package:netflix_demo/presentation/new_and_hot/widget/everyoneswatching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(83),
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: AppBar(
                title: Text('New & Hot',
                    style: GoogleFonts.montserrat(
                        color: kWhiteColor,
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
                actions: [
                  const Icon(Icons.cast, color: Colors.white),
                  kWidth,
                  Container(width: 30, height: 20, color: Colors.blue),
                  kWidth,
                ],
                bottom: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: textStyleBlack,
                    unselectedLabelColor: kWhiteColor,
                    indicator: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: kRadius30,
                    ),
                    tabs: const [
                      Tab(
                        text: "🎁 Coming Soon",
                      ),
                      Tab(
                        text: "👀 Everyon's Watching",
                      ),
                    ]),
              ),
            )),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildeveryoneWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) =>
          const ComingSoonWidget(),
    );
  }

  Widget _buildeveryoneWatching() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          const EveryonesWatchingWidget(),
    );
  }
}
