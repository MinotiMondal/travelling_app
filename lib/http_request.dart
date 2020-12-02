import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Photo> _photos;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchRequest();
  }

  Future<List<Photo>> fetchRequest() async {
    var url = 'https://jsonplaceholder.typicode.com/photos';
    var response = await http.get(url);
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    return parsePhotos(response.body);
  }

  List<Photo> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        builder: (ctx, snapshot) {
           print(snapshot.connectionState);
           print(snapshot.data);
           if(snapshot.connectionState == ConnectionState.waiting) {
             return Center(child: CircularProgressIndicator(),);
           } else {
             List<Photo> photos = snapshot.data as List<Photo>;
              return ListView.builder(itemBuilder: (ctx, index) {
                return Text(photos[index].url);
              }, itemCount: photos.length,);
           }
        },
        future: fetchRequest(),
      ),
    );
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

