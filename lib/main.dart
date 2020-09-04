import 'package:flutter/material.dart';
import 'package:notification_app/screens/home.dart';
import 'package:notification_app/screens/information.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/home', routes: {
    '/home': (context) => Home(),
    '/information': (context) => Inf(),
  }));
}
