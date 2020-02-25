import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("HomePage"), 
          backgroundColor: Colors.grey[800],
        ), 
        
        drawer: Drawer(
          child: ListView(
              children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("Muhammmad Muneeb"), 
                    accountEmail: Text("muhammadmuneeb107@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white, 
                      child: Text("M"),
                      ),
                      
                    ),
                    
                  ListTile(
                   
                    title: Text("Home ",style:TextStyle(
                        fontSize: 15.0,
                        
                       backgroundColor: Colors.teal,
                        decorationColor: Colors.red,
                        
                      )
                    ), 
                  ),
                  ListTile(
                      title: Text("Calculator", style:TextStyle(
                          fontSize: 15.0,
                          color: Colors.white
                        ) 
                      ),
                      trailing: Icon(Icons.arrow_right),
                      onTap: (){
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/calculator");
                      },
                  ),
                 ListTile(
                    title: Text("Close",style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.white
                      )
                    ),
                    trailing: Icon(Icons.close), 
                    onTap:()=> Navigator.of(context).pop(),
                 )

              ],
          ), 
        ),
        body: Center(
            child: Text("Welcome to Flutter ",style:TextStyle(
                fontSize: 20.0,
                color: Colors.white

            )
            ),
        ),
      ),
      
    );
  }
}