import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Myhomepage extends StatefulWidget {

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
 fetchRequest();
  }
  void fetchRequest()async{
    var url = 'https://jsonplaceholder.typicode.com/photos';
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

  //  print(await http.read('https://example.com/foobar.txt'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
//class Photo {
//  final int id;
//  final String title;
//  final String thumbnailUrl;
//
//  Photo({this.id, this.title, this.thumbnailUrl});

  class photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  photo.fromJson(Map<String, dynamic> json) {
  albumId = json['albumId'];
  id = json['id'];
  title = json['title'];
  url = json['url'];
  thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['albumId'] = this.albumId;
  data['id'] = this.id;
  data['title'] = this.title;
  data['url'] = this.url;
  data['thumbnailUrl'] = this.thumbnailUrl;
  return data;
  }
  }
