import 'package:flutter/material.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "My First App",
        home: Scaffold(
        appBar:AppBar(
          title: Text("My First App"),
          ),
          body: Center(
            child: Text("Hello World Pakitan"),
            ),
        ),      

    );
  }
}