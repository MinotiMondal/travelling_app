import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'http_request.dart';
class http_request_two extends StatefulWidget {
  @override
  _http_request_twoState createState() => _http_request_twoState();
}

class _http_request_twoState extends State<http_request_two> {
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
      body:  FutureBuilder(
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
