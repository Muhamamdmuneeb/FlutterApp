
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert'as covert;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url="https://swapi.co/api/people";
  List data;
  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async{
    var response = await http.get(
        Uri.encodeFull(url),
        headers:{"Accept":"Application/json"}
    );
    print(response.body);
    setState(() {
      var converData= covert.jsonDecode(response.body);
      data=converData['results'];
    });
    print(data);
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child:Text("Http Request Handle")
            ), 
        ),
        drawer: Drawer(

        ),
        body: ListView.builder(
          itemCount: data==null?0:data.length,
          itemBuilder:(BuildContext context,int index){
            return Container(
              padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Card(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(data[index]['name'],style: TextStyle(
                            color: Colors.white
                          ),
                          ), 
                        ), 
                      )
                    ], 
                  ),
                ),
            );
          }, 
        ),
    );
  }
}