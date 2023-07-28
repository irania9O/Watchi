// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:math';
import 'package:text_scroll/text_scroll.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../Deatails/Details.dart';

class TopPage extends StatefulWidget {
  final int matchId;
  const TopPage({Key? key, required this.matchId}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
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

  final List<String> imageList5 = [
    'https://i.pravatar.cc/400?img=41',
    'https://i.pravatar.cc/400?img=42',
    'https://i.pravatar.cc/400?img=43',
    'https://i.pravatar.cc/400?img=44',
    'https://i.pravatar.cc/400?img=45',
    'https://i.pravatar.cc/400?img=46',
    'https://i.pravatar.cc/400?img=47',
    'https://i.pravatar.cc/400?img=48',
    'https://i.pravatar.cc/400?img=49',
    'https://i.pravatar.cc/400?img=50',
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
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 5, left: 5),
            height: 45,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.teal.withOpacity(0.5),
            ),
            child: const TextScroll(
              'برای اطلاع از آخرین اخبار واتچی در کانال تلگرام عضو شوید و همچنین می توانید از طریق اینستاگرام واتچی با ما در ارتباط باشید',
              textDirection: TextDirection.rtl,
              velocity: Velocity(pixelsPerSecond: Offset(30, 0)),
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
                const Text(
                  'محبوب ترین بازیگران',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
              viewportFraction: 0.28,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {},
              padEnds: false,
              scrollDirection: Axis.horizontal,
            ),
            items: imageList4.map(
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
                            velocity: Velocity(pixelsPerSecond: Offset(20, 0)),
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
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'محبوب ترین ها',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
            items: imageList2.map(
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
                            tag: url,
                            child: Image.network(
                              url,
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
                const Text(
                  'برترین های حوزه فناوری',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
            items: imageList3.map(
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
                            tag: url,
                            child: Image.network(
                              url,
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
                const Text(
                  'برترین های IMDB',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
            items: imageList4.map(
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
                            tag: url,
                            child: Image.network(
                              url,
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
                const Text(
                  'جدیدترین ها',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
            items: imageList5.map(
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
                            tag: url,
                            child: Image.network(
                              url,
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
              },
            ).toList(),
          ),
          // GFShimmer(
          //   child: GFImageOverlay(
          //     height: 200,
          //     width: 200,
          //     shape: BoxShape.circle,
          //     // image network
          //     // image: const NetworkImage(
          //     //     'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
          //     boxFit: BoxFit.cover,
          //     colorFilter:
          //         const ColorFilter.mode(Colors.black12, BlendMode.darken),
          //     color: Colors.black87,
          //     child: const Text(
          //       'GF',
          //       style: TextStyle(
          //         fontSize: 60,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
