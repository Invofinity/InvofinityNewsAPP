import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 14,
          ),
          Text(
            'Saved',
            style: TextStyle(
                color: txtColor, fontFamily: 'PoppinsBold', fontSize: 18),
          ),
          SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
