import 'package:flutter/material.dart';
import 'package:ui_practice/bottom_navigation_bar.dart';
import 'package:ui_practice/pages/insta_home.dart';
import 'package:ui_practice/pages/insta_profile.dart';
import 'package:ui_practice/pages/post_details.dart';
import 'package:ui_practice/pages/post_profile.dart';

void main() async{
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
        // primaryColor: Colors.purple,
      ),
      // home: const PostDetails(),
      // home: PostProfile(),
      // home: const InstaProfile(),
      // home: InstaHome(),
      home: BottomNav(),
    );
  }
}
