// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SearchLoadingPage extends StatefulWidget {
  final int matchId;
  const SearchLoadingPage({Key? key, required this.matchId}) : super(key: key);

  @override
  State<SearchLoadingPage> createState() => _SearchLoadingPageState();
}

class _SearchLoadingPageState extends State<SearchLoadingPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          const GFShimmer(
            child: GFTypography(
              text: 'لیست نمایش جستجو',
              icon: Icon(Icons.search),
              type: GFTypographyType.typo3,
              dividerColor: Colors.red,
              dividerAlignment: Alignment.topCenter,
            ),
          ),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7, // 9 / 16,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return GFShimmer(
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey[300],
                    ),
                    child: null,
                  ),
                );
              }),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
