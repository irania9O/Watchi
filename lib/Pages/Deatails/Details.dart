// ignore_for_file: file_names

import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:readmore/readmore.dart';
import 'package:text_scroll/text_scroll.dart';

class DetailsPage extends StatefulWidget {
  final String url;
  const DetailsPage({Key? key, required this.url}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with TickerProviderStateMixin {
  late TabController tabController;

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

  var random = Random();
  int lengthSessions = 5;

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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.teal,
            forceElevated: true,
            forceMaterialTransparency: true,
            expandedHeight: 300,
            pinned: false,
            stretch: true,
            snap: true,
            floating: true,
            leading: const BackButton(color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('نام فیلم',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              background: Hero(
                tag: widget.url,
                child: Image.network(
                  widget.url,
                  fit: BoxFit.cover,
                  width: 1000.0,
                  height: 150,
                ),
              ),
            ),
          ),
        ],
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.teal,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            SizedBox(width: 5),
                            Text(
                              '4.5',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_today, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              '28 Jul 2023',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              '120 دقیقه',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
                child: const GFTypography(
                  text: 'خلاصه داستان',
                  fontWeight: FontWeight.bold,
                  icon: Icon(Icons.info_outline, color: Colors.teal),
                  type: GFTypographyType.typo3,
                  dividerColor: Colors.red,
                  dividerAlignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 15,
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
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 12,
                ),
                child: const GFTypography(
                  text: 'بازیگران',
                  fontWeight: FontWeight.bold,
                  icon: Icon(Icons.person, color: Colors.teal),
                  type: GFTypographyType.typo3,
                  dividerColor: Colors.red,
                  dividerAlignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CarouselSlider(
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
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 12,
                ),
                child: const GFTypography(
                  text: 'فیلم های مشابه',
                  fontWeight: FontWeight.bold,
                  icon: Icon(Icons.movie, color: Colors.teal),
                  type: GFTypographyType.typo3,
                  dividerColor: Colors.red,
                  dividerAlignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 120,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.22,
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
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(url: url),
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
                                // check if the url is the same
                                tag: '$url 2',
                                child: Image.network(
                                  url,
                                  fit: BoxFit.cover,
                                  width: 1000.0,
                                  height: 120,
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
                  },
                ).toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
                child: const GFTypography(
                  text: 'دانلود',
                  fontWeight: FontWeight.bold,
                  icon: Icon(Icons.download, color: Colors.teal),
                  type: GFTypographyType.typo3,
                  dividerColor: Colors.red,
                  dividerAlignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: GFTabBar(
                controller: tabController,
                isScrollable: true,
                tabBarHeight: 50,
                tabBarColor: Colors.white,
                length: lengthSessions,
                labelColor: Colors.teal,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Vazir',
                ),
                width: MediaQuery.of(context).size.width,
                tabs: List.generate(
                  lengthSessions,
                  (index) => Tab(
                    child: Text('فصل ${index + 1}'),
                  ),
                ),
                indicatorColor: Colors.teal,
              ),
            ),
            SliverToBoxAdapter(
              child: GFTabBarView(
                // height: 300,
                controller: tabController,
                children: List.generate(
                  lengthSessions,
                  (index) => SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        random.nextInt(8) + 1,
                        (index) => GFAccordion(
                          title: 'قسمت ${index + 1}',
                          margin: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                            bottom: 3,
                          ),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          contentChild: const Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'کیفیت 1080',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                trailing: Icon(Icons.download),
                              ),
                              ListTile(
                                title: Text(
                                  'کیفیت 720',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                trailing: Icon(Icons.download),
                              ),
                              ListTile(
                                title: Text(
                                  'کیفیت 480',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                trailing: Icon(Icons.download),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Text('فصل 1'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
