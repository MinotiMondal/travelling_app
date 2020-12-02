import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
 // List<String> list = ["1", "2", "3"];
 // print(list[1]);

  // var map = {"username": "jitesh", "password": 'jitesh@123'};
  // var map = Map();
  // map['username'] = 'jitesh';
  // map['password'] = 'jitesh@123';
  //
  // print(map['password']);
  //
  var response = await http.get('https://5f383e6541c94900169bfd42.mockapi.io/api/v1/user_details');
  print(response.body);

  var userDetails = UserDetails.fromJson(jsonDecode(response.body));
  print(userDetails.name);
  print(userDetails.rating);
  print(userDetails.played);
  print(userDetails.winningPercentage);
  print(userDetails.image);
}

class UserDetails {
    String name;
    int rating;
    int played;
    int winningPercentage;
    String image;

    UserDetails(this.name, this.rating, this.played, this.winningPercentage, this.image);

    UserDetails.fromJson(Map<String, dynamic> json) {
      name = json['name'];
      rating = json['rating'];
      played = json['played'];
      winningPercentage = json['winning_percentage'];
      image = json['image'];
    }

}
