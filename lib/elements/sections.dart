import 'package:flutter/material.dart';
import 'package:notification_app/elements/data.dart';
import 'package:notification_app/elements/news_tile.dart';

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);
  var allarticles = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    Data newsClass = Data();
    await newsClass.getData();
    allarticles = newsClass.articles;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allarticles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, '/information', arguments: {
              '/link': allarticles[index].url,
              '/content': allarticles[index].content,
              '/head': allarticles[index].head,
              '/img': allarticles[index].img
            }),
            child: Tile(
              img: allarticles[index].img,
              head: allarticles[index].head,
              des: allarticles[index].des,
            ),
          );
        });
  }
}

class Business extends StatefulWidget {
  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);
  var allarticles1 = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    Data1 newsClass1 = Data1();
    await newsClass1.getData();
    allarticles1 = newsClass1.articles1;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allarticles1.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, '/information', arguments: {
              '/link': allarticles1[index].url,
              '/content': allarticles1[index].content,
              '/head': allarticles1[index].head,
              '/img': allarticles1[index].img
            }),
            child: Tile(
              img: allarticles1[index].img,
              head: allarticles1[index].head,
              des: allarticles1[index].des,
            ),
          );
        });
  }
}

class Sports extends StatefulWidget {
  @override
  _SportsState createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);
  var allarticles2 = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    Data2 newsClass2 = Data2();
    await newsClass2.getData();
    allarticles2 = newsClass2.articles2;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allarticles2.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, '/information', arguments: {
              '/link': allarticles2[index].url,
              '/content': allarticles2[index].content,
              '/head': allarticles2[index].head,
              '/img': allarticles2[index].img
            }),
            child: Tile(
              img: allarticles2[index].img,
              head: allarticles2[index].head,
              des: allarticles2[index].des,
            ),
          );
        });
  }
}

class Politics extends StatefulWidget {
  @override
  _PoliticsState createState() => _PoliticsState();
}

class _PoliticsState extends State<Politics> {
  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);
  var allarticles3 = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    Data3 newsClass3 = Data3();
    await newsClass3.getData();
    allarticles3 = newsClass3.articles3;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allarticles3.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, '/information', arguments: {
              '/link': allarticles3[index].url,
              '/content': allarticles3[index].content,
              '/head': allarticles3[index].head,
              '/img': allarticles3[index].img
            }),
            child: Tile(
              img: allarticles3[index].img,
              head: allarticles3[index].head,
              des: allarticles3[index].des,
            ),
          );
        });
  }
}

class Entertainment extends StatefulWidget {
  @override
  _EntertainmentState createState() => _EntertainmentState();
}

class _EntertainmentState extends State<Entertainment> {
  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);
  var allarticles4 = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    Data4 newsClass4 = Data4();
    await newsClass4.getData();
    allarticles4 = newsClass4.articles4;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allarticles4.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, '/information', arguments: {
              '/link': allarticles4[index].url,
              '/content': allarticles4[index].content,
              '/head': allarticles4[index].head,
              '/img': allarticles4[index].img
            }),
            child: Tile(
              img: allarticles4[index].img,
              head: allarticles4[index].head,
              des: allarticles4[index].des,
            ),
          );
        });
  }
}
