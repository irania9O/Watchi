// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CategoryLoadingPage extends StatefulWidget {
  final int matchId;
  const CategoryLoadingPage({Key? key, required this.matchId})
      : super(key: key);

  @override
  State<CategoryLoadingPage> createState() => _CategoryLoadingPageState();
}

class _CategoryLoadingPageState extends State<CategoryLoadingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return GFShimmer(
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
          child: const ListTile(
            leading: Icon(Icons.category, color: Colors.amber),
            title: Text(
              'نام دسته بندی',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('توضیحات',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                )),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      );
    });
  }
}
