import 'package:flutter/material.dart';
import 'package:notification_app/screens/home.dart';
import 'package:notification_app/screens/information.dart';
import 'package:notification_app/screens/settings.dart';
import 'package:notification_app/screens/tips.dart';
import 'package:notification_app/elements/news_tile.dart';
import 'package:notification_app/screens/profile.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/information': (context) => Inf(),
      '/settings': (context) => Settings(),
      '/tips': (context) => Tips(),
      '/saved': (context) => Saved(),
      '/newstile': (context) => Tile(),
      '/profile': (profile) => Profile()
    },
  ));
}
