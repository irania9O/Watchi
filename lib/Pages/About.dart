// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  final int matchId;
  const AboutPage({Key? key, required this.matchId}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info_outline, size: 100, color: Colors.grey),
          Text(
            'درباره ما',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          Text(
            'هنوز اطلاعاتی در این قسمت وجود ندارد',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
