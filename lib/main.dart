// import 'package:app/Articles.dart';
import 'package:flutter/material.dart';
import 'Articles.dart';
import 'Detail.dart';
import 'RouteB.dart';

 void main()=>runApp(MyApp());

 class MyApp extends StatelessWidget{
      @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "My App",
        theme: ThemeData(fontFamily:"Roboto"),
        home: RouteA()
    );
  }
 }
  class RouteA extends StatelessWidget{
      @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),  
        ),
        body: Container(
          child:Center(
            child:RaisedButton(
              child: Text("Navigate to screen"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RouteB()));
                //COntext handler to identify widget in tree
              } ,)
        ),
        )
    );
  }
  }

