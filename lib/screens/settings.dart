import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int currentIndex;
  bool receive = true;
  final FirebaseMessaging _fcm = FirebaseMessaging();
  @override
  void initState() {
    super.initState();
    setState(() {
      _fcm.subscribeToTopic('FlutterDevs');
    });
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = const Color(0xFFffffff);
    final txtColor = const Color(0xFF171717);
    final up = const Color(0xFFff416c);
    final cardColor = const Color(0xFFf8f8f8);
    final down = const Color(0xFFff4b2b);
    final switchColor = const Color(0xFFFF483C);

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 14,
          ),
          Text(
            'Settings',
            style: TextStyle(
                color: txtColor, fontFamily: 'PoppinsBold', fontSize: 18),
          ),
          SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () =>
                      {Navigator.pushReplacementNamed(context, '/profile')},
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    color: cardColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          radius: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            'Durgesh Kudalkar',
                            maxLines: 1,
                            style: TextStyle(
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: bgColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(FontAwesome.bell),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            'Notifications',
                            style: TextStyle(
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Switch(
                          value: receive,
                          onChanged: (value) {
                            setState(() {
                              value
                                  ? _fcm.subscribeToTopic('FlutterDevs')
                                  : _fcm.unsubscribeFromTopic('FlutterDevs');
                              receive = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: bgColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(FontAwesome.clock_o),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            'Search History',
                            style: TextStyle(
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: bgColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          FontAwesome.sign_out,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            'Log out',
                            style: TextStyle(
                              fontFamily: 'PoppinsSemiBold',
                              color: Colors.red,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 444,
                  width: MediaQuery.of(context).size.width,
                  color: cardColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 20),
                              Text(
                                'Share',
                                style: TextStyle(
                                  fontFamily: 'PoppinsSemiBold',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 20),
                              Text(
                                'Rate Us',
                                style: TextStyle(
                                  fontFamily: 'PoppinsSemiBold',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 20),
                              Text(
                                'Buy Us a Coffee',
                                style: TextStyle(
                                  fontFamily: 'PoppinsSemiBold',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 20),
                              Text(
                                'Help & FAQ',
                                style: TextStyle(
                                  fontFamily: 'PoppinsSemiBold',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 20),
                              Text(
                                'About Us',
                                style: TextStyle(
                                  fontFamily: 'PoppinsSemiBold',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
