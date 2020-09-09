import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:notification_app/elements/basic_elements.dart';
import 'package:notification_app/elements/sections.dart';
import 'package:notification_app/elements/lists.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:notification_app/screens/saved.dart';
import 'package:notification_app/screens/tips.dart';
import 'package:notification_app/screens/settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final bgColor = const Color(0xFFffffff);
    final txtColor = const Color(0xFF171717);
    final up = const Color(0xFFff416c);
    final down = const Color(0xFFff4b2b);

    return Scaffold(
        backgroundColor: bgColor,
        body: PageView(
          children: [HomePage(), Tips(), Saved(), Settings()],
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          controller: pageController,
        ),
        bottomNavigationBar: BubbleBottomBar(
          opacity: 0.2,
          backgroundColor: bgColor,
          borderRadius: BorderRadius.circular(14),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              pageController.animateToPage(currentIndex,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            });
          },
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
                backgroundColor: up,
                icon: Icon(
                  Entypo.news,
                  color: txtColor,
                ),
                activeIcon: Icon(
                  Entypo.news,
                  color: up,
                ),
                title: Text('News',
                    style: TextStyle(
                        fontFamily: 'PoppinsSemiBold', fontSize: 12))),
            BubbleBottomBarItem(
                backgroundColor: up,
                icon: Icon(
                  Entypo.tumblr,
                  color: txtColor,
                ),
                activeIcon: Icon(Entypo.tumblr, color: up),
                title: Text('Tips',
                    style: TextStyle(
                        fontFamily: 'PoppinsSemiBold', fontSize: 12))),
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
                    style: TextStyle(
                        fontFamily: 'PoppinsSemiBold', fontSize: 12))),
            BubbleBottomBarItem(
                backgroundColor: up,
                icon: Icon(
                  Entypo.cog,
                  color: txtColor,
                ),
                activeIcon: Icon(Entypo.cog, color: up),
                title: Text('Settings',
                    style: TextStyle(
                        fontFamily: 'PoppinsSemiBold', fontSize: 12))),
          ],
        ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int current = 0;
  TabController tabcontroller;

  final bgColor = const Color(0xFFffffff);
  final txtColor = const Color(0xFF171717);
  final up = const Color(0xFFff416c);
  final down = const Color(0xFFff4b2b);

  @override
  void initState() {
    super.initState();
    tabcontroller = new TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 14,
          ),
          Text(
            'My Feed',
            style: TextStyle(
                color: txtColor, fontFamily: 'PoppinsBold', fontSize: 18),
          ),
          SizedBox(
            height: 14,
          ),
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
          TabBar(
              labelColor: txtColor,
              indicator: CircleTabIndicator(color: txtColor, radius: 2.0),
              indicatorWeight: 4,
              controller: tabcontroller,
              tabs: [
                Tab(
                  child: Container(
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Business',
                      style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Sports',
                      style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Politics',
                      style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Entertainment',
                      style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ]),
          Expanded(
              child: TabBarView(controller: tabcontroller, children: [
            All(),
            Business(),
            Sports(),
            Politics(),
            Entertainment()
          ]))
        ],
      ),
    );
  }
}
