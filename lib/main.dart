import 'package:flutter/material.dart';
import './fesion_home.dart';
//import './pages/product_detail.dart';
void main()=>runApp(FashionApp());

class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FashionApp", 
      theme: ThemeData(
        primarySwatch: Colors.teal ,
        primaryColor: Colors.teal,
        brightness: Brightness.dark
      ),
      home: FashionHome(),
      // routes: <String ,WidgetBuilder>{
      //   "/product_detail":(BuildContext context)=>PageDetails()
      // },
    );
  }
}