import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelling_app/Home_page_two.dart';
import 'package:travelling_app/Homepage.dart';
import 'package:travelling_app/LOGIN.dart';
import 'package:travelling_app/appbar.dart';
import 'package:travelling_app/boxdecoration.dart';
import 'package:travelling_app/eleven_class.dart';
import 'package:travelling_app/http.dart';
import 'package:travelling_app/http_request_one.dart';
import 'package:travelling_app/http_request_three.dart';
import 'package:travelling_app/http_request_two.dart';
import 'package:travelling_app/seven_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage()
    );
  }
}

class HOMESCREEN extends StatefulWidget {
  @override
  _HOMESCREENState createState() => _HOMESCREENState();
}

class _HOMESCREENState extends State<HOMESCREEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Opacity(
        opacity: 0.8,
        child: Image.asset(
          "assets/travel.jpg",
          fit: BoxFit.cover,
          // height: double.infinity,
        ),
      ),
      Positioned(
          top: 80,
          left: 20,
          child: Text(
            "Where you want\n to go?",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          )),
      Positioned(
          top: 180,
          left: 20,
          child: Text(
            "Let's take a trip with us",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          )),
      Positioned(
          bottom: 140,
          left: 145,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LOGIN()),
              );
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: (Text(
                  'register now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          )),
      Positioned(
          bottom: 100,
          left: 160,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: (Text(
              'NOT NOW',
              style: TextStyle(
                  color: Colors.black87,
                  // fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 14),
            )),
          )),
    ]));
  }
}
