import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Inf extends StatefulWidget {
  @override
  _InfState createState() => _InfState();
}

class _InfState extends State<Inf> {
  Map variables = {};
  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);

  @override
  Widget build(BuildContext context) {
    variables = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Icon(
          Feather.arrow_left_circle,
          color: txtColor,
        ),
        elevation: 0,
        title: Text(
          'My Feed',
          style: TextStyle(
            color: txtColor,
            fontFamily: 'PoppinsBold',
          ),
        ),
        centerTitle: true,
      ),
      body: Page(
          img: variables['/img'],
          url: variables['/link'],
          content: variables['/content'],
          head: variables['/head']),
    );
  }
}

class Page extends StatelessWidget {
  final img, url, content, head;
  Page({this.img, this.url, this.content, this.head});
  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);
  final sec = const Color(0xFFf8f8f8);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: bgColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 372,
                    height: 372,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: sec,
                        image: DecorationImage(
                            image: NetworkImage(img), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 5,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [up, down])),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          width: 290,
                          child: Text(
                            head,
                            style: TextStyle(
                                color: txtColor,
                                fontFamily: 'PoppinsBold',
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        GestureDetector(
                          child: Container(
                            width: 40,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [up, down]),
                            ),
                            child: Icon(
                              EvilIcons.external_link,
                              color: bgColor,
                            ),
                          ),
                          onTap: () => launch(url),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      child: Text(
                    content,
                    style: TextStyle(
                        color: txtColor, fontFamily: 'Poppins', fontSize: 15),
                  )),
                ],
              ),
            )
          ],
        ));
  }
}
