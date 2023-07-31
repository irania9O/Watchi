// ignore_for_file: file_names

import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:readmore/readmore.dart';
import 'package:text_scroll/text_scroll.dart';

import 'DetailsMovie.dart';

class DetailsActerPage extends StatefulWidget {
  final String url;
  const DetailsActerPage({Key? key, required this.url}) : super(key: key);

  @override
  State<DetailsActerPage> createState() => _DetailsActerPageState();
}

class _DetailsActerPageState extends State<DetailsActerPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  // final ScrollController _scrollController = ScrollController();

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
  int lengthSessions = 8;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: lengthSessions, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // controller: _scrollController,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    child: Hero(
                      tag: widget.url,
                      child: Image.network(
                        widget.url,
                        fit: BoxFit.cover,
                        width: 1000.0,
                        height: 300,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 50,
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Colors.amber.withOpacity(0.7),
                      ),
                      child: const TextScroll(
                        'نام کامل بازیگر',
                        textDirection: TextDirection.rtl,
                        fadedBorder: true,
                        fadeBorderSide: FadeBorderSide.left,
                        intervalSpaces: 10,
                        pauseBetween: Duration(seconds: 3),
                        velocity: Velocity(pixelsPerSecond: Offset(40, 0)),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(2.0),
                      // color: Colors.black.withOpacity(0.5),
                      child: const BackButton(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.teal,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              'تاریخ تولد',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.person, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              'جنسیت',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              ' | ',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'سن',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
                child: const GFTypography(
                  text: 'بیوگرافی',
                  fontWeight: FontWeight.bold,
                  icon: Icon(Icons.info_outline, color: Colors.teal),
                  type: GFTypographyType.typo3,
                  dividerColor: Colors.red,
                  dividerAlignment: Alignment.topCenter,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 12,
                ),
                child: const ReadMoreText(
                  'یک متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی متن طولانی ',
                  trimLines: 3,
                  trimExpandedText: 'بستن',
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                  delimiter: '... ',
                  delimiterStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  trimCollapsedText: 'بیشتر بخوانید',
                  moreStyle: TextStyle(
                      color: Colors.pink,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 12,
                ),
                child: const GFTypography(
                  text: 'بازیگران مشابه',
                  fontWeight: FontWeight.bold,
                  icon: Icon(Icons.person, color: Colors.teal),
                  type: GFTypographyType.typo3,
                  dividerColor: Colors.red,
                  dividerAlignment: Alignment.topCenter,
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.2,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {},
                  padEnds: false,
                  scrollDirection: Axis.horizontal,
                ),
                items: imageList.map(
                  (url) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GFAvatar(
                            backgroundImage: NetworkImage(url),
                            shape: GFAvatarShape.circle,
                            size: 60,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            width: 80,
                            child: Center(
                              child: TextScroll(
                                'نام بازیگر',
                                textDirection: TextDirection.rtl,
                                fadedBorder: true,
                                fadeBorderSide: FadeBorderSide.left,
                                intervalSpaces: 10,
                                pauseBetween: Duration(seconds: 1),
                                velocity:
                                    Velocity(pixelsPerSecond: Offset(20, 0)),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 12,
                  top: 12,
                ),
                child: const GFTypography(
                  text: 'فیلم ها',
                  fontWeight: FontWeight.bold,
                  icon: Icon(Icons.movie, color: Colors.teal),
                  type: GFTypographyType.typo3,
                  dividerColor: Colors.red,
                  dividerAlignment: Alignment.topCenter,
                ),
              ),
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.7, // 9 / 16,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsMoviePage(url: imageList2[index % 10]),
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
                                tag: imageList2[index % 10],
                                child: Image.network(
                                  imageList2[index % 10],
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
                                velocity:
                                    Velocity(pixelsPerSecond: Offset(40, 0)),
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
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: const Icon(Icons.play_arrow, color: Colors.amber),
      ),
    );
  }
}
