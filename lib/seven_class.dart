import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class seven_class extends StatefulWidget {
  @override
  _seven_classState createState() => _seven_classState();
}

class _seven_classState extends State<seven_class> {
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
