import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelling_app/Home_page_two.dart';
import 'package:travelling_app/travelling_gallery_card.dart';
import 'package:travelling_app/travelling_search_box.dart';

class Homepage extends StatefulWidget {

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin{
  int _selectedIndex = 0;
 // static const TextStyle optionStyle =
 // TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   List<Widget> _widgetOptions = <Widget>[
    Home_Page_Two(),
  ];

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var listViewImage = "assets/princepghat.jpg";
    return Scaffold(

      //  child: _widgetOptions[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],

        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
             // color: Colors.cyanAccent,
              decoration: BoxDecoration(color: Colors.grey,
                boxShadow:[
                 BoxShadow(
                     color:Colors.grey.withOpacity(0.8),
                 blurRadius: 2,
                 spreadRadius: 6)
                ]
              ),

              height: 400,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/victoria.jpg",
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                    left: 40,
                    child: IconButton(
                      icon: Icon(Icons.keyboard_backspace),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(40, 50, 20, 10),
                      child: TravellingSearchBox()),
                  Positioned(
                    top: 270,
                    //bottom: 90,
                    left: 40,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "KOLKATA , WESTBENGAL",
                          style: TextStyle(color: Colors.black87,fontSize: 20),
                        ),
                        Text("CITY OF JOY"),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 320,
                    left: 40,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.lightBlueAccent,
                      textColor: Colors.white,
                      disabledColor: Colors.lightBlueAccent,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.deepPurpleAccent,
                      onPressed: () {
                        /*...*/
                      },
                      child: Text(
                        "Explore",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 40,top: 10,),
                height: 50,
                child: Text(
                  "Top cities",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal,color: Colors.black87),
                ),
              ),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.only(left: 40),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Container(child: TravellingGalleryCard(),
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(18))),
                  );
                },
                itemCount: 10,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
