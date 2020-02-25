import 'package:flutter/material.dart';
import 'calculator.dart';
import 'homepage.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculator App",
        theme: ThemeData(
          fontFamily: "Roboto",
          primarySwatch: Colors.grey,
          brightness: Brightness.dark
        ),
        home: Home(),
        routes: <String , WidgetBuilder>{
          "/calculator":(BuildContext context)=>Calculator(),
        },
    );
  }
}