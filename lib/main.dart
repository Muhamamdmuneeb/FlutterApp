// import 'package:app/Articles.dart';
import 'package:flutter/material.dart';
import 'Articles.dart';

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