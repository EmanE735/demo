import 'package:flutter/material.dart';

class IosPage extends StatelessWidget {
  const IosPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("RouteAppOne" ,style: TextStyle(color: Colors.white),),
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
          children:<Widget> [
            Image.asset("assets/IOS.jpeg"),
            SizedBox(height: 20.0,),
            Text("oop refreshment", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text(" .introduction ", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("a. installing OS X virtual machine", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("b. installing Xcode and the ios sdk", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("c. guided tour of Xcode", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("d. an itroduction to Xcode playgrounds", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("swift programing language", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("a. swift data types , constants and variables", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("b. swift operators and expressions", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("c. swift flow control", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("d. the swift switch statement", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("e. An overview of swift", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text(".nested loops", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text(".strings", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("arrays", style: TextStyle(color: Colors.white,fontSize: 20.0),),
          ],
        ),
      ),
    );
  }
}
  
