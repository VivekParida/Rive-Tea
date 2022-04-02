//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive_tea/Pages/ChatRoom.dart';
import 'package:rive_tea/Pages/loggedInScreen.dart';

import '../Pages/Explore.dart';
import '../Pages/Trending.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    ChatRoom(),
    Trending(),
    Explore(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 10,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromRGBO(33, 118, 225, 1),
        unselectedItemColor: Color.fromRGBO(104, 106, 138, 1),
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/Group 5.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Comment.svg'), label: 'Chat'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Fire.svg'), label: 'Trending'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Globe.svg'), label: 'Explore'),
        ],
      ),
    );
  }
}
