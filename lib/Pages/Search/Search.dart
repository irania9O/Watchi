// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:math';
import 'package:text_scroll/text_scroll.dart';

import '../Deatails/Details.dart';

class SearchPage extends StatefulWidget {
  final int matchId;
  const SearchPage({Key? key, required this.matchId}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> imageList = [
    'https://i.pravatar.cc/400?img=1',
    'https://i.pravatar.cc/400?img=2',
    'https://i.pravatar.cc/400?img=3',
    'https://i.pravatar.cc/400?img=4',
    'https://i.pravatar.cc/400?img=5',
    'https://i.pravatar.cc/400?img=6',
    'https://i.pravatar.cc/400?img=7',
    'https://i.pravatar.cc/400?img=8',
    'https://i.pravatar.cc/400?img=9',
    'https://i.pravatar.cc/400?img=10',
  ];

  final List<String> imageList2 = [
    'https://i.pravatar.cc/400?img=11',
    'https://i.pravatar.cc/400?img=12',
    'https://i.pravatar.cc/400?img=13',
    'https://i.pravatar.cc/400?img=14',
    'https://i.pravatar.cc/400?img=15',
    'https://i.pravatar.cc/400?img=16',
    'https://i.pravatar.cc/400?img=17',
    'https://i.pravatar.cc/400?img=18',
    'https://i.pravatar.cc/400?img=19',
    'https://i.pravatar.cc/400?img=20',
  ];
  final List<String> imageList3 = [
    'https://i.pravatar.cc/400?img=21',
    'https://i.pravatar.cc/400?img=22',
    'https://i.pravatar.cc/400?img=23',
    'https://i.pravatar.cc/400?img=24',
    'https://i.pravatar.cc/400?img=25',
    'https://i.pravatar.cc/400?img=26',
    'https://i.pravatar.cc/400?img=27',
    'https://i.pravatar.cc/400?img=28',
    'https://i.pravatar.cc/400?img=29',
    'https://i.pravatar.cc/400?img=30',
  ];

  List<String> imageList4 = [];

  var random = Random();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    imageList4.addAll(imageList);
    imageList4.addAll(imageList2);
    imageList4.addAll(imageList3);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const GFTypography(
            text: 'لیست نمایش جستجو',
            icon: Icon(Icons.search),
            type: GFTypographyType.typo3,
            dividerColor: Colors.red,
            dividerAlignment: Alignment.topCenter,
          ),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7, // 9 / 16,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 30,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(url: imageList4[index]),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Hero(
                            tag: imageList4[index],
                            child: Image.network(
                              imageList4[index],
                              fit: BoxFit.cover,
                              width: 1000.0,
                              height: 150,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.all(2.0),
                          color: Colors.black.withOpacity(0.5),
                          child: const TextScroll(
                            'آخرین تلاش های یک دیوانه',
                            textDirection: TextDirection.rtl,
                            fadedBorder: true,
                            fadeBorderSide: FadeBorderSide.left,
                            intervalSpaces: 10,
                            pauseBetween: Duration(seconds: 1),
                            velocity: Velocity(pixelsPerSecond: Offset(40, 0)),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        // right: 0,
                        left: 0,
                        // width: 5,
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                            color: Colors.amber.withOpacity(0.7),
                          ),
                          child: Text(
                            // random.nextInt(100).toString(),
                            (random.nextDouble() * 10.0).toStringAsFixed(1),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                            ),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          margin: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.all(2.0),
                          // color: Colors.black.withOpacity(0.5),
                          child: const Text(
                            'HD',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
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
