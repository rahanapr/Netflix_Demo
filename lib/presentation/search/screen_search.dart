import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/search/widget/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
            ),
            kHeight,
            //const Expanded(child: SearchIdleWidget()),
            const Expanded(child: SearchResult()),
          ],
        ),
      )),
    );
  }
}
