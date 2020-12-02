import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class eleven extends StatefulWidget {
  @override
  _elevenState createState() => _elevenState();
}
class _elevenState extends State<eleven> {
  List<Vegetable> list = [
    Vegetable('assets/princepghat.jpg', "Tomato", false, "10 Rs", "1 kg"),
    Vegetable('assets/front.jpg', "Tomato1", false, "19 Rs", "1.1 kg"),
    Vegetable('assets/front.jpg', "Tomato2", false, "10 Rs", "1 kg"),
    Vegetable('assets/victoria.jpg', "Tomato2", false, "10 Rs", "1 kg"),
    Vegetable('assets/victoria.jpg', "Tomato2", false, "10 Rs", "1 kg"),
    Vegetable('assets/victoria.jpg', "Tomato2", false, "10 Rs", "1 kg")
  ];
  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
        shrinkWrap: true,
        itemBuilder: (builder, item) {
          Vegetable vegetable = list[item];
          return Stack(
            overflow: Overflow.visible,
            children: [
              Image.asset(
                vegetable.imageurl,
                fit: BoxFit.cover,
                height: 150,
              ),
              Positioned(
                bottom: 8,
                  left: 8,
                  child: Text(vegetable.name,style: TextStyle(color:Colors.white,shadows: [
          BoxShadow(
          color: Colors.white,
          blurRadius: 10.0,
          offset: const Offset(0.0, 10.0),
          ),
          ], ),))
            ],
          );
        },
        itemCount: list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8,mainAxisSpacing: 8,childAspectRatio: 100/80 ),
      );

  }
}
class Vegetable {
  String imageurl;
  String name;
  bool isAddedToCart = false;
  String price;
  String kgs;

  Vegetable(this.imageurl, this.name, this.isAddedToCart, this.price, this.kgs);
}
