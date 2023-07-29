import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'Pages/Home/Home.dart';
import 'Pages/Home/HomeLoading.dart';

import 'Pages/Favorite/Favorite.dart';
import 'Pages/Favorite/FavoriteLoading.dart';

import 'Pages/Search/Search.dart';
import 'Pages/Search/SearchLoading.dart';

import 'Pages/Top/Top.dart';
import 'Pages/Top/TopLoading.dart';

import 'Pages/About.dart';
import 'Pages/Settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'واتچی',
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
  Widget currentWidget = const HomeLoadingPage(matchId: 1);
  int _current = 2;

  void updatePage(current) {
    setState(() {
      _current = current;
      switch (current) {
        case 0:
          currentWidget = const TopLoadingPage(matchId: 1);
          break;
        case 1:
          currentWidget = const FavoriteLoadingPage(matchId: 1);
          break;
        case 2:
          currentWidget = const HomeLoadingPage(matchId: 1);
          break;
        case 3:
          currentWidget = const SettingsPage(matchId: 1);
          break;
        case 4:
          currentWidget = const AboutPage(matchId: 1);
          break;
      }
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        switch (current) {
          case 0:
            if (currentWidget is TopLoadingPage) {
              currentWidget = const TopPage(matchId: 1);
            }
            break;
          case 1:
            if (currentWidget is FavoriteLoadingPage) {
              currentWidget = const FavoritePage(matchId: 1);
            }
            break;
          case 2:
            if (currentWidget is HomeLoadingPage) {
              currentWidget = const HomePage(matchId: 1);
            }
            break;
          case 3:
            if (currentWidget is SettingsPage) {
              return;
              // currentWidget = const SettingsPage(matchId: 1);
            }
            break;
          case 4:
            if (currentWidget is AboutPage) {
              return;
              // currentWidget = const AboutPage(matchId: 1);
            }
            break;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        currentWidget = const HomePage(matchId: 1);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
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
          if (value.length < 3) {
            return;
          }
          if (value != '') {
            setState(() {
              currentWidget = const SearchLoadingPage(matchId: 1);
            });
            Future.delayed(const Duration(seconds: 3), () {
              setState(() {
                if (currentWidget is SearchLoadingPage) {
                  currentWidget = const SearchPage(matchId: 1);
                }
              });
            });
          } else {
            updatePage(_current);
          }
        },
        onSubmitted: (value) {
          if (value == '') {
            updatePage(_current);
          }
        },
        actions: <Widget>[
          GFIconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border,
                color: Colors.white, size: 20),
            type: GFButtonType.transparent,
          ),
          GFIconBadge(
            position: GFBadgePosition.topStart(top: 3, start: 0),
            counterChild: const GFBadge(
              text: '5',
              shape: GFBadgeShape.circle,
              size: GFSize.SMALL,
            ),
            child: GFIconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none,
                  color: Colors.white, size: 21),
              type: GFButtonType.transparent,
            ),
          ),
        ],
      ),
      drawer: GFDrawer(
        child: Container(
          padding: EdgeInsets.zero,
          child: Column(
            children: <Widget>[
              GFDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
                currentAccountPicture: GFAvatar(
                  backgroundImage: Image.network(
                    "https://i.pravatar.cc/400?img=60",
                    fit: BoxFit.cover,
                    width: 1000.0,
                    height: 300,
                  ).image,
                  radius: 80,
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'علی کمالی',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'کاربر ویژه',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
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
                      leading: const Icon(Icons.share),
                      title: const Text('اشتراک گذاری'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('خروج'),
                      onTap: () {},
                    ),
                    const Spacer(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(2.0),
                      decoration: const BoxDecoration(
                        color: Colors.teal,
                      ),
                      child: const Text(
                        'نسخه 1.0.0',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
        onTap: (int i) => {
          setState(() {
            _current = i;
            updatePage(_current);
          })
        },
        items: const [
          TabItem(icon: Icons.trending_up, title: 'برترین ها'),
          TabItem(icon: Icons.favorite, title: 'علاقه مندی'),
          TabItem(icon: Icons.home, title: 'ویترین'),
          TabItem(icon: Icons.settings, title: 'تنظیمات'),
          TabItem(icon: Icons.info, title: 'درباره ما'),
        ],
      ),
      body: currentWidget,
    );
  }
}
