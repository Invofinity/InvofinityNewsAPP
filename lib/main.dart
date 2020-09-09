import 'package:flutter/material.dart';
import 'package:notification_app/screens/home.dart';
import 'package:notification_app/screens/information.dart';
import 'package:notification_app/screens/settings.dart';
import 'package:notification_app/screens/saved.dart';
import 'package:notification_app/screens/tips.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/information': (context) => Inf(),
      '/settings': (context) => Settings(),
      '/tips': (context) => Tips(),
      '/saved': (context) => Saved(),
    },
  ));
}
