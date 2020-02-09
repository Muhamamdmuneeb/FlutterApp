
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Second App",
      home: Scaffold(
        appBar:AppBar(
          title: Text("My Second App"),
          ),
        body: Center(
          child: MyWidget()
        ),
      ),
    );
  }
}

class MyWidget extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Container(
        height:100.0,
        width:100.0,
        child:Image.asset("assets/img/logo.png")
      ),
      Text("The Facebook logo",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,),)
    ],);
  }
}
