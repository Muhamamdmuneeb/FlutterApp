import 'package:flutter/material.dart';
import 'Articles.dart';

class DetailArticle extends StatelessWidget{
  Article selectedArticle;
  DetailArticle(this.selectedArticle);
 
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Details",
        theme: ThemeData(fontFamily:"Roboto"),
        home: Scaffold(
            appBar: AppBar(
                title: Text("Details"),
            ),
            body: Column(
                children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left:100.0),
                        child: Text(selectedArticle.name),
                    ),
                    Container(
                        padding: EdgeInsets.only(left:100.0),
                        child: Text(selectedArticle.detail),
                    )
                ],
            ),
        ),
    );
  }
}