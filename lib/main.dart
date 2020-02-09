import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  List<String> listView=["Karachi","Lahore","Peshawar","Faslabad","Sakhar","Haripur","Mansehra"];//Make a list to view
  @override
  Widget build(BuildContext context) {//this is a build that used to show content
    // TODO: implement build
    return MaterialApp(
      title: "List View",
      theme: ThemeData(fontFamily:"Roboto"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.builder(
          itemCount: listView.length,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
              title: Text(listView[index],style: TextStyle(fontSize:16,color:Colors.grey[800]),),
            );//ListTile widget make a row
          },
        ),

      ),
      );
  }
}