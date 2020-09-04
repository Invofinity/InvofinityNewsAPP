import 'package:flutter/material.dart';
//This is the news tile to be displayed
class Tile extends StatelessWidget {
  final String img;
  final String head;
  final String des;
  final cardColor = const Color(0xFFf8f8f8);
  final txtColor = const Color(0xFF171717);
  Tile({this.img, this.head, this.des});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: cardColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 156.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: cardColor,
                image: DecorationImage(
                    image: NetworkImage(
                      img,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              head,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'PoppinsSemiBold',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: txtColor,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              des,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: txtColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
