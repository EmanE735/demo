import 'package:flutter/material.dart';
import 'package:flutter_application_2/android_page.dart';
import 'package:flutter_application_2/full_stack.dart';
import 'package:flutter_application_2/ios_page.dart';

class RouteHome extends StatelessWidget {
  const RouteHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("RouteAppOne" ,style: TextStyle(color: Colors.white),),
      ),

      body: 
         Container(
          
          margin: EdgeInsets.all(20.0),
          child: ListView(
          
            children: <Widget>[
              Image.asset("assets/Android.jpeg"),
              ElevatedButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (_)=> AndroidPage()));
              },
               child:Text("ANDROID COURCES", style: TextStyle(fontSize: 17.0),),
               style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(
                Colors.blue,
               ),
               foregroundColor: MaterialStatePropertyAll(Colors.white),
               ),
               
                ),
                  Image.asset("assets/IOS.jpeg"),
              ElevatedButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (_)=> IosPage()));
              },
               child:Text("IOS COURCES", style: TextStyle(fontSize: 17.0),),
               style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(
                Colors.blue,
               ),
               foregroundColor: MaterialStatePropertyAll(Colors.white),
               ),
               
                ),
                  Image.asset("assets/fullStack.jpeg"),
              ElevatedButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (_)=> FullStackPage()));
              },
               child:Text("FULL STACK", style: TextStyle(fontSize: 17.0),),
               style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(
                Colors.blue,
               ),
               foregroundColor: MaterialStatePropertyAll(Colors.white),
               ),
               
                )
        
            ],
          ),
        ),
      
    );
  }
}