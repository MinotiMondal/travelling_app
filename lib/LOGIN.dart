import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/Homepage.dart';

class LOGIN extends StatefulWidget {
  @override
  _LOGINState createState() => _LOGINState();
}
class _LOGINState extends State<LOGIN> {
  int _index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/one.jpg",
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.cyan[50],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18)),
                  boxShadow: [
                    BoxShadow(
                       color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'USERNAME',
                          //    prefixIcon: Icon(Icons.email),
                          suffixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'password',
                          // prefixIcon: Icon(Icons.email),
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                        onTap: () {
                          print("Forgrt Password");
                        },
                        child: Text(
                          "Forget Password?",
                          textAlign: TextAlign.right,
                        )),
                    if (_index == 2) Text('No Internet Connection'),
                    SizedBox(
                      height: 10,
                    ),
                    //width: double.maxFinite,
                    //width: double.minPositive,
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.black87)),
                      onPressed: () {
                        Connectivity()
                            .onConnectivityChanged
                            .listen((ConnectivityResult result) {
                          setState(() {
                            _index = result.index;
                          });
                          print("Connectivity Status: " +
                              result.index.toString());
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
                      },
                      color: Colors.lightBlueAccent,
                      elevation: 20.0,
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: RichText(
                textScaleFactor: 0.3,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: "Don\'t have an account! ",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: "Sign up",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                        //decorationStyle: TextDecorationStyle.dotted
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
