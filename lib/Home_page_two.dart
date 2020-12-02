import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travelling_app/eleven_class.dart';
import 'package:travelling_app/place/place._offer.dart';

class Home_Page_Two extends StatefulWidget {
  @override
  _Home_Page_TwoState createState() => _Home_Page_TwoState();
}

class _Home_Page_TwoState extends State<Home_Page_Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, right: 30, left: 30),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
                child: IconButton(icon:Icon(Icons.arrow_back), onPressed: () {  } ,)),
            Row(
              children: [
                Text(
                  "TOP cities",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                Text("See All"),
              ],
            ),
            SizedBox(height: 300, child: eleven()),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Popular Offer",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                Text("See All"),
              ],
            ),
            SizedBox(height: 20,),
            PlaceOffer()
//            Align(
//              alignment: Alignment.bottomRight,
//                child: Text("hcjdlj"))
          ],
        ),
      ),
    );
  }
}
