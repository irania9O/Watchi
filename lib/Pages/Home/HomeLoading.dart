// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeLoadingPage extends StatefulWidget {
  final int matchId;
  const HomeLoadingPage({Key? key, required this.matchId}) : super(key: key);

  @override
  State<HomeLoadingPage> createState() => _HomeLoadingPageState();
}

class _HomeLoadingPageState extends State<HomeLoadingPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GFCarousel(
            autoPlay: true,
            aspectRatio: 2.0,
            height: 200,
            hasPagination: true,
            activeIndicator: Colors.amber,
            passiveIndicator: Colors.teal,
            enlargeMainPage: true,
            pagerSize: 11,
            enableInfiniteScroll: true,
            // pauseAutoPlayOnTouch: const Duration(seconds: 3),
            items: List.generate(
              5,
              (index) {
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
              },
            ).toList(),
            onPageChanged: (index) {},
          ),
          const SizedBox(
            height: 10,
          ),
          GFShimmer(
            child: Container(
              height: 45,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],
              ),
              child: null,
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const GFShimmer(
                  child: Text(
                    'محبوب ترین ها',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Text('مشاهده همه'),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GFTypography(
            type: GFTypographyType.typo3,
            dividerColor: Colors.red,
            dividerAlignment: Alignment.topCenter,
            child: Container(),
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 0.3,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {},
              padEnds: false,
              scrollDirection: Axis.horizontal,
            ),
            items: List.generate(
              6,
              (index) {
                return GFShimmer(
                  child: Container(
                    height: 150,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey[300],
                    ),
                    child: null,
                  ),
                );
              },
            ).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const GFShimmer(
                  child: Text(
                    'سریال های به روز شده',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Text('مشاهده همه'),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GFTypography(
            type: GFTypographyType.typo3,
            dividerColor: Colors.red,
            dividerAlignment: Alignment.topCenter,
            child: Container(),
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 0.3,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {},
              padEnds: false,
              scrollDirection: Axis.horizontal,
            ),
            items: List.generate(
              6,
              (index) {
                return GFShimmer(
                  child: Container(
                    height: 150,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey[300],
                    ),
                    child: null,
                  ),
                );
              },
            ).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const GFShimmer(
                  child: Text(
                    'فیلم های به روز شده',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Text('مشاهده همه'),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GFTypography(
            type: GFTypographyType.typo3,
            dividerColor: Colors.red,
            dividerAlignment: Alignment.topCenter,
            child: Container(),
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 0.3,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {},
              padEnds: false,
              scrollDirection: Axis.horizontal,
            ),
            items: List.generate(
              6,
              (index) {
                return GFShimmer(
                  child: Container(
                    height: 150,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey[300],
                    ),
                    child: null,
                  ),
                );
              },
            ).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const GFShimmer(
                  child: Text(
                    'بازیگران محبوب',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Text('مشاهده همه'),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GFTypography(
            type: GFTypographyType.typo3,
            dividerColor: Colors.red,
            dividerAlignment: Alignment.topCenter,
            child: Container(),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 0.3,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {},
              padEnds: false,
              scrollDirection: Axis.horizontal,
            ),
            items: List.generate(
              6,
              (idnex) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GFShimmer(
                        child: GFAvatar(
                          shape: GFAvatarShape.circle,
                          size: 60,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 80,
                        child: Center(
                          child: GFShimmer(
                            child: Text(
                              'نام',
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
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
          // icon with gfbadge
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
