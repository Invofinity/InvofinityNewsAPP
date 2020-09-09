import 'package:flutter/material.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NavBar extends StatefulWidget {
  int currentIndex;
  NavBar(int current) {
    this.currentIndex = current;
  }
  @override
  _NavBarState createState() => _NavBarState(currentIndex);
}

class _NavBarState extends State<NavBar> {
  int currentIndex;
  _NavBarState(int current) {
    this.currentIndex = current;
  }
  void changePage(int index) {
    setState(() {
      currentIndex = index;
      if (currentIndex == 0) {
        Navigator.pushReplacementNamed(context, '/home');
      } else if (currentIndex == 3) {
        Navigator.pushReplacementNamed(context, '/settings', arguments: {
          '/currnetIndex': currentIndex,
        });
      }
    });
  }

  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);
  @override
  Widget build(BuildContext context) {
    return BubbleBottomBar(
      opacity: 0.2,
      backgroundColor: bgColor,
      borderRadius: BorderRadius.circular(14),
      onTap: changePage,
      currentIndex: currentIndex,
      items: <BubbleBottomBarItem>[
        BubbleBottomBarItem(
            backgroundColor: up,
            icon: Icon(
              Entypo.news,
              color: txtColor,
            ),
            activeIcon: Icon(Entypo.news, color: up),
            title:
                Text('News', style: TextStyle(fontFamily: 'PoppinsSemiBold'))),
        BubbleBottomBarItem(
            backgroundColor: up,
            icon: Icon(
              Entypo.tumblr,
              color: txtColor,
            ),
            activeIcon: Icon(Entypo.tumblr, color: up),
            title:
                Text('Tips', style: TextStyle(fontFamily: 'PoppinsSemiBold'))),
        BubbleBottomBarItem(
            backgroundColor: up,
            icon: Icon(
              Entypo.bookmark,
              color: txtColor,
            ),
            activeIcon: Icon(
              FontAwesome.bookmark,
              color: up,
            ),
            title:
                Text('Saved', style: TextStyle(fontFamily: 'PoppinsSemiBold'))),
        BubbleBottomBarItem(
            backgroundColor: up,
            icon: Icon(
              Entypo.cog,
              color: txtColor,
            ),
            activeIcon: Icon(Entypo.cog, color: up),
            title: Text('Settings',
                style: TextStyle(fontFamily: 'PoppinsSemiBold'))),
      ],
    );
  }
}
