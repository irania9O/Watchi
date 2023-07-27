// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:math';
import 'package:text_scroll/text_scroll.dart';

class FavoritePage extends StatefulWidget {
  final int matchId;
  const FavoritePage({Key? key, required this.matchId}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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

  final List<String> imageList4 = [
    'https://i.pravatar.cc/400?img=31',
    'https://i.pravatar.cc/400?img=32',
    'https://i.pravatar.cc/400?img=33',
    'https://i.pravatar.cc/400?img=34',
    'https://i.pravatar.cc/400?img=35',
    'https://i.pravatar.cc/400?img=36',
    'https://i.pravatar.cc/400?img=37',
    'https://i.pravatar.cc/400?img=38',
    'https://i.pravatar.cc/400?img=39',
    'https://i.pravatar.cc/400?img=40',
  ];

  var random = Random();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const GFTypography(
            text: 'لیست علاقه مندی ها',
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
              itemCount: 15,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      height: 200,
                      margin: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.network(
                          imageList[index % 10],
                          fit: BoxFit.cover,
                          width: 1000.0,
                          height: 200,
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
