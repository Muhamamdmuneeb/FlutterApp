import 'package:flutter/material.dart';
import 'Articles.dart';
import 'Detail.dart';
class RouteB extends StatelessWidget{
  // List<String> mydata =  ["Muhammad Muneeb","Muhammad Omar","Arslan Arshad","Mohsin Ali Husani","Sajjad Ali"];
  final mydata=List<Article>.generate(20, (i){
    return Article("The Articles is $i","The detail of Articles $i");
  });
    @override
Widget build(BuildContext context){
  return MaterialApp(
    title: "Mylist",
    theme: ThemeData(fontFamily:"Roboto"),
    home: Scaffold(
        appBar: AppBar(
          title: Text("My List"),
        ),
        body:ListView.separated(
    itemCount: mydata.length,
    itemBuilder: (BuildContext context,int index){
      return ListTile(
          title:  Text(mydata[index].name),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>DetailArticle(mydata[index])
              ));
          },
      );
    }, 
    separatorBuilder: (BuildContext context,int index)=>Divider(), 
    
    
    ) ,
    ),
  );
   
}
}
