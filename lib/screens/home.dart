import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:notification_app/elements/dots.dart';
import 'package:notification_app/elements/lists.dart';
import 'package:notification_app/elements/data.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:notification_app/elements/news_tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int current = 0;
  var allarticles = [];
  int currentIndex;

  Future<void> fetchNews() async {
    Data newsClass = Data();
    await newsClass.getData();
    allarticles = newsClass.articles;
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = const Color(0xFFffffff);
    final txtColor = const Color(0xFF171717);
    final up = const Color(0xFFff416c);
    final down = const Color(0xFFff4b2b);

    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              height: 160.0,
              aspectRatio: 9 / 16,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              onPageChanged: ((index) {
                setState(() {
                  current = index;
                });
              }),
              items: imgList
                  .map((e) => Builder(builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: txtColor,
                              borderRadius: BorderRadius.circular(14.0),
                              image: DecorationImage(
                                image: AssetImage(e),
                                fit: BoxFit.cover,
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 80.0, width: 510),
                              Container(
                                width: 200,
                                child: Text(
                                  imgInf[imgList.indexOf(e)],
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'PoppinsSemiBold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: bgColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }))
                  .toList(),
            ),
            SizedBox(
              height: 5,
            ),
            SelectedImage(noOfDots: imgList.length, index: current),
            SizedBox(
              height: 5,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: allarticles.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Navigator.pushReplacementNamed(
                            context, '/information',
                            arguments: {
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
                    }))
          ],
        ),
        bottomNavigationBar: BubbleBottomBar(
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
                title: Text('News',
                    style: TextStyle(fontFamily: 'PoppinsSemiBold'))),
            BubbleBottomBarItem(
                backgroundColor: up,
                icon: Icon(
                  Entypo.tumblr,
                  color: txtColor,
                ),
                activeIcon: Icon(Entypo.tumblr, color: up),
                title: Text('Tips',
                    style: TextStyle(fontFamily: 'PoppinsSemiBold'))),
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
                title: Text('Saved',
                    style: TextStyle(fontFamily: 'PoppinsSemiBold'))),
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
        ));
  }
}
