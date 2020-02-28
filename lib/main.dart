import 'package:flutter/material.dart';
import './home.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Http Request",
        theme: ThemeData(
          primarySwatch: Colors.teal,
          brightness: Brightness.dark
        ),
        home: HomePage(),
    );
  }
}