import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class boxdecoration extends StatefulWidget {
  @override
  _boxdecorationState createState() => _boxdecorationState();
}

class _boxdecorationState extends State<boxdecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          height: 200,
       // color: Colors.red,
        margin: EdgeInsets.only(left: 20,right: 20,top: 40),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [BoxShadow(color: Colors.green.withOpacity(0.8),
            spreadRadius: 15,
            blurRadius: 10)]
          ),

        )
      ],),
    );
  }
}
