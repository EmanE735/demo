import 'package:flutter/material.dart';

class FullStackPage extends StatelessWidget {
  const FullStackPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("RouteAppOne" ,style: TextStyle(color: Colors.black),),
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
            Image.asset("assets/fullStack.jpeg"),
            SizedBox(height: 20.0,),
            Text("html", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("html5", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("css", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("css3", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("SAss", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("bootstrap4", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("java script", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("reguler exprestions", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("ECMA Script6", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("J query", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("anguler 7", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("fabric.js", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("Ajax ", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("Json", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("hosting and domains", style: TextStyle(color: Colors.white,fontSize: 20.0),),
            Text("freelancing tips and tricks", style: TextStyle(color: Colors.white,fontSize: 20.0),),
          ],
        ),
      ),
    );
  }
}
  
