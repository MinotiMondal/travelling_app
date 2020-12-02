import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:travelling_app/http.dart';
class http_request_one extends StatefulWidget {
  @override
  _http_request_oneState createState() => _http_request_oneState();
}

class _http_request_oneState extends State<http_request_one> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchRequest();
  }

  void fetchRequest()async{
    List<Photo>photos;
    var url = 'https://jsonplaceholder.typicode.com/photos';
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    photos  = parsePhotos(response.body);
    print("Length of Photos:" + photos.length.toString());

  }

  List<Photo> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});
  Photo.fromJson(Map<String, dynamic> json) {
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