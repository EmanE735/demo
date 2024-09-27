import 'package:flutter/material.dart';

class AndroidPage extends StatelessWidget {
  const AndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "RouteAppOne",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Image.asset("assets/Android.jpeg"),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "part1 (java SE)",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              " 1- introduction to java",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              "programing",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              ".overview",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              ".compiler and jvm",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              ".project structure",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              ".hello world application)",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              "Variabils and Data types",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              "operators",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              "conditional statements (if - switch)",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              "loops(for-hile-do while)",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              "2-basics",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              ".nested loops",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              ".strings",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              "arrays",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
