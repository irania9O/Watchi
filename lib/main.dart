import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:math';
import 'package:text_scroll/text_scroll.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          scrollbars: false,
        ),
        theme: ThemeData(
          fontFamily: 'Vazir',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'واتچی'),
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GFBottomSheetController controller = GFBottomSheetController();

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: GFAppBar(
        backgroundColor: Colors.teal,
        // leading: GFIconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.menu, color: Colors.white),
        //   type: GFButtonType.transparent,
        // ),
        searchBar: true,
        searchHintText: 'نام فیلم یا سریال را جستجو کنید',
        searchBarColorTheme: Colors.white,
        searchHintStyle: const TextStyle(color: Colors.white, fontSize: 12),
        searchTextStyle: const TextStyle(color: Colors.white, fontSize: 12),
        title: Text(widget.title),
        centerTitle: true,
        onChanged: (value) {
          print(value);
        },
        actions: <Widget>[
          GFIconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border,
                color: Colors.white, size: 20),
            type: GFButtonType.transparent,
          ),
          GFIconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none,
                color: Colors.white, size: 20),
            type: GFButtonType.transparent,
          ),
        ],
      ),
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const GFDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'علی',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'کاربر ویژه',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('برترین ها'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('علاقه مندی ها'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('ویترین'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('تنظیمات'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('درباره ما'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('خروج'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.teal,
        activeColor: Colors.white,
        // color: Colors.white,
        // height: 50,
        top: -20,
        // curveSize: 100,
        // style: TabStyle.fixedCircle,
        // curve: Curves.easeInBack,
        initialActiveIndex: 2,
        // onTap: (int i) => print('click index=$i'),
        items: const [
          TabItem(icon: Icons.trending_up, title: 'برترین ها'),
          TabItem(icon: Icons.favorite, title: 'علاقه مندی'),
          TabItem(icon: Icons.home, title: 'ویترین'),
          TabItem(icon: Icons.settings, title: 'تنظیمات'),
          TabItem(icon: Icons.info, title: 'درباره ما'),
        ],
      ),
      body: SingleChildScrollView(
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
              items: imageList.map(
                (url) {
                  return Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                            width: 1000.0,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        bottom: 18,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.black.withOpacity(0.5),
                            ),
                            width: 200,
                            height: 30,
                            // color: Colors.black.withOpacity(0.5),
                            child: const Center(
                              child: TextScroll(
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
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),
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
            GFItemsCarousel(
              rowCount: 4,
              itemHeight: 150,
              children: imageList2.map(
                (url) {
                  return Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                            width: 1000.0,
                            height: 150,
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
                    'سریال های به روز شده',
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
            GFItemsCarousel(
              rowCount: 4,
              itemHeight: 150,
              children: imageList3.map(
                (url) {
                  return Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                            width: 1000.0,
                            height: 150,
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
                    'فیلم های به روز شده',
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
            GFItemsCarousel(
              rowCount: 4,
              itemHeight: 150,
              children: imageList4.map(
                (url) {
                  return Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                            width: 1000.0,
                            height: 150,
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
          ],
        ),
      ),
    );
  }
}
