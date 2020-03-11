
// ************************************This File is Not in Scope*******************

// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:http/http.dart' as http;
// import 'dart:convert'as covert;


// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final name1= TextEditingController();
//   String user1="";
//   String user2=""; 
//   final name2= TextEditingController();
//   final String url="https://love-calculator.p.rapidapi.com/getPercentage?fname=$user1&sname=$user2";
//   String result="loading";
//   String percentage="loading";
//   @override
//   void initState(){
//     super.initState();
//   }
//   @override
//   void dispose(){
//     name1.dispose();
//     name2.dispose();
//     super.dispose();
//   }
  


//   Future<String> getJsonData() async{
//     setState(() {
//       user1=name1.toString();
//       user2=name2.toString();
//     });
//     var response = await http.get(
//         Uri.encodeFull(url),
//         headers:{
//             "x-rapidapi-host": "love-calculator.p.rapidapi.com",
//             "x-rapidapi-key": "71a9b78756msh7b23314b1bcff8ep19e8d6jsn9cca66c1508b"
//           }
//     );
//     print(response.body);
//     setState(() {
//       var converData= covert.jsonDecode(response.body);
//       result=converData['result'];
//       percentage=converData['percentage'];
//     });
//     print(result);
//     return "Success";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Center(
//             child:Text("Http Request Handle"),
//             ), 
//         ),
//         drawer: Drawer(

//         ),
//         body: Container(
//           padding: const EdgeInsets.all(5.0),
//           child: Center(
//             child:Card(
               
//                 child: Container(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Column(
                  
                 
                  
//                   // crossAxisAlignment: CrossAxisAlignment.center, 
//                   children: <Widget>[
                    
//                     Center(
//                         child:Text("Love Calculator App",style: TextStyle(
//                               fontSize: 20.0,
//                               color: Colors.red
//                           ),
//                         )
//                       ),
//                       Divider(),
//                       TextField(
//                         controller: name1,
//                         decoration: InputDecoration(
//                           labelText: "Enter You Name",
//                           icon: Icon(Icons.account_circle
//                           ),
//                           labelStyle: TextStyle(
//                             color: Colors.white,

//                             fontSize: 15.0
//                           ) 
//                         ),
//                       ),
//                       Divider(),
//                       TextField(
//                         controller: name2,
//                           decoration: InputDecoration(
//                             icon: Icon(
//                               Icons.people
//                             ),
//                             labelText: "Enter Your Partner Name",
//                             labelStyle: TextStyle(
//                             color: Colors.white ,

//                             fontSize: 15.0
//                           ) 
//                           ),
//                       ),
//                       RaisedButton(
//                         child: Text("Search",style: TextStyle(
//                             fontSize: 20.0,
//                             color: Colors.white
//                         ),
//                         ),
//                         onPressed: this.getJsonData,
//                       ),
//                       Center(
//                           child: Text(result==null?"loading":result),
//                       )
//                    ],
//                   ),
//                 )

//             ) 
//           ),
//         )
//     );
//   }
// }