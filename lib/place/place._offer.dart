import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PlaceOffer extends StatefulWidget {
  @override
  _PlaceOfferState createState() => _PlaceOfferState();
}

class _PlaceOfferState extends State<PlaceOffer> {
  List<Place>list=[
 //   Place('assets/victoria.jpg',"Sweden Rock"," From = 567", 90,false ),
 //   Place('assets/victoria.jpg'," From = 567", 90,false ),
    Place(imageurl: 'assets/victoria.jpg',name: "Victoria",distance: "700",rate: 90,isAddedToCart:false ),
    Place(imageurl: 'assets/victoria.jpg',name: "Victoria",distance: "700",rate: 90,isAddedToCart:false ),
    Place(imageurl: 'assets/victoria.jpg',name: "Victoria",distance: "700",rate: 90,isAddedToCart:false ),

  ];
  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (builder,item){
          Place place = list[item];
          return  Stack(
            children: <Widget>[
              Positioned(
                top: 2,
              //  left: 2,
                child: Container(
                  color: Colors.deepOrange,
                  height: 100,
                  width: 300,
                  child: Image.asset(place.imageurl,height: 50,cacheWidth: 50,),
                ),
              ),
             Positioned(
               left: 100,
               top: 3,
               child: Text(place.name,),
             ),
             Positioned(
               left: 100,
               top: 30,
               child: Text(place.distance),),

             // Positioned()
            ],

          );
      },
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio:50/20 ),
      );

  }
}
class Place{
  String imageurl;
  String name;
  String distance;
  int  rate;
  bool isAddedToCart = false;
  Place( {this.imageurl, @required this.name,this.distance,this.rate,this.isAddedToCart,});
}