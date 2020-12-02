import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ConnectivityApp());

class ConnectivityApp extends StatelessWidget {
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
  int _index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        _index = result.index;
      });
      print("Connectivity Status: " + result.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connectivity Status"),
      ),
      body: _index == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : _index == 2 ? Center(child: Text('No Internet'),):
         SingleChildScrollView(
              child: Column(
              children: [
                Container(
                  height: 200,
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )),
    );
  }
}
