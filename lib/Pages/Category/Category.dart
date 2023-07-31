// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final int matchId;
  const CategoryPage({Key? key, required this.matchId}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final categoryList = [
    'جنایی',
    'درام',
    'کمدی',
    'اکشن',
    'ماجراجویی',
    'ترسناک',
    'علمی تخیلی',
    'مستند',
    'موزیک',
    'معمایی',
    'هیجان انگیز',
    'فانتزی',
    'خانوادگی',
    'وسترن',
    'جنگی',
    'تاریخی',
    'عاشقانه',
    'ورزشی',
    'کودکانه',
    'بیوگرافی',
    'کوتاه',
    'موزیکال',
    'مذهبی',
    'سیاسی',
    'سریال',
    'مسابقه ای',
    'تلویزیونی',
    'تریلر',
    'واقعیت',
    'سینمایی',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.teal,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: ListTile(
                leading: const Icon(Icons.category, color: Colors.amber),
                title: Text(
                  categoryList[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text('توضیحات',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    )),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            onTap: () {},
          );
        });
  }
}
