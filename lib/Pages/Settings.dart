// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final int matchId;
  const SettingsPage({Key? key, required this.matchId}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings_outlined, size: 100, color: Colors.grey),
          Text(
            'تنظیمات',
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
