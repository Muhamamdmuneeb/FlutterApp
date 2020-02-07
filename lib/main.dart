import 'package:flutter/material.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "My First App",
        home: MyWidget()  
    );
  }
}
class MyWidget extends StatefulWidget{
  @override
  MyWidgetState createState() {
    // TODO: implement createState
    return MyWidgetState();
  }
}
class MyWidgetState extends State<MyWidget>{
  String  _text="Text Change";
  onClick(){
    setState(() {

      _text="The Counter Started";
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:AppBar(
          title: Text("My First App"),
          ),
          body: Center(
            child: Text(_text),
            ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              onClick();
            },
            child: Icon(Icons.add),
          ),
        ) ;
  }
}