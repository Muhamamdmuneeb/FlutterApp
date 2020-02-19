import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _text(){
    return Center(
      child: Text(myController.text), 
    );
  }
  double size=150.0;
  final myController=TextEditingController();
  @override
    void dispose(){
      myController.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Calculator",style: TextStyle(
                fontSize: 20.0
            ),), 
          ),
          backgroundColor: Colors.teal,
        ),
        body: Container(
         padding: const EdgeInsets.all(20.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: <Widget>[
              Center(
                child:Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/img/muneeb.JPG"),
                    fit: BoxFit.fill,
                  )
                  ),
              ) ,
              ),
              Center(
                child: Text("Hi:I am web & Mobile App Developer"+myController.text,style:TextStyle(
                  
                  fontFamily:"Nunito Sans",
                  color: Colors.red,
                  fontSize: 20.0
                  )), 
              ),
              Center(
                child:Text("Calculator App",style:TextStyle(
                  fontFamily:"Nunito Sans",
                  color: Colors.red,
                  fontSize: 15.0
                  ))
              ),
              TextField(
                controller: myController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  
                  labelText: "Enter No 1",
                  focusColor: Colors.red,
                  labelStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal
                  )
                  
                ), 
              ),
              TextField(
                
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color:Colors.teal,
                    fontSize: 20.0 
                  ),
                  labelText: "Enter No 2"

                ), 
              ),
              Center(
                child: _text(),
              ),
              Center(
                  child: RaisedButton(
                      child:Text("Change"),
                      onPressed: _text,
                  ),
              )
              
            ],

          )
        )
        
    );
  }
}
