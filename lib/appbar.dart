import 'package:flutter/material.dart';

class appbar extends StatefulWidget {
  @override
  _appbarState createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Venue"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_paused,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_paused,
              color: Colors.white,
            ),
          )
        ]

      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
                child: Padding(
                  padding: const EdgeInsets.all( 15),
                  child: Container(
                    height: 175,
                    width: 400,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/victoria.jpg')),


                    ),


                  ),
                ),
                onTap: () {
                  //_showChoiceDialogue(context);
                }),
            SizedBox(
              height: 20,
              child: Text("wedding hall"),
            ),
            InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 175,
                    width: 400,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/victoria.jpg'))),
                  ),
                ),
                onTap: () {
                  //_showChoiceDialogue(context);
                }),
            SizedBox(
              height: 20,
            ),
        InkWell(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 175,
                width: 400,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/victoria.jpg'))),
              ),
            ),
            onTap: () {
              //_showChoiceDialogue(context);
            }),
    ])
    ));


  }
}
