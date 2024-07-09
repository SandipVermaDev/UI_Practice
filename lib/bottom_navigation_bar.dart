import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/pages/insta_home.dart';
import 'package:ui_practice/pages/insta_profile.dart';
import 'package:ui_practice/pages/post_details.dart';
import 'package:ui_practice/pages/post_profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex=0;
  List body =[
    InstaHome(),
    InstaProfile(),
    PostDetails(),
    PostProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.photo_fill),
              label: 'Post'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'User'
          )
        ],
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.indigo,
      ),
    );
  }
}
