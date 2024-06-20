import 'package:flutter/material.dart';
import 'package:ui_practice/pages/insta_profile.dart';
import 'package:ui_practice/pages/post_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.dark,
        primaryColor: Colors.purple,
      ),
      // home: const PostDetails(),
      home: const InstaProfile(),
    );
  }
}
