// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/account.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';
import 'package:instagram_ui/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_final_fields
  int _selectedIndex = 0;

  void _navigatebottonbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//different page to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navigatebottonbar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'call'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reals'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
