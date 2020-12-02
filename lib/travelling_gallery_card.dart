import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TravellingGalleryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var listViewImage="assets/princepghat.jpg";
    return Container(
      child: Row(
        children: [
          Container(child: Image.asset(listViewImage),
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(18))),),
          SizedBox(
            width: 20,
          )
        ],
      ),
//      decoration: BoxDecoration(
//        borderRadius:BorderRadius.only(topLeft:Radius.circular(18),
//          topRight: Radius.circular(18)
//        ),
//        
//        
//      ),
    );;
  }
}
