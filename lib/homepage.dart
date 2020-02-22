import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   
  var num1=0.0;
  var num2=0.0;
  var sum=0.0;

  final myController=TextEditingController();
  final myController1=TextEditingController();
  Widget _text(){
    return Center(
      
      child: Text(sum.toString()), 
    );
  }
  void doAdd(){
    setState(() {
      num1=double.parse(myController.text);
      num2=double.parse(myController1.text);
      sum=num1+num2;
    });
  }
  void doSub(){
    setState(() {
      num1=double.parse(myController.text);
      num2=double.parse(myController1.text);
      sum=num1-num2;
    });
  }
  void doMult(){
    setState(() {
      num1=double.parse(myController.text);
      num2=double.parse(myController1.text);
      sum=num1*num2;
    });
  }
  void doDiv(){
    setState(() {
      num1=double.parse(myController.text);
      num2=double.parse(myController1.text);
      sum=(num1/num2);
    });
  }
  double size=150.0;
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        appBar: AppBar(
          title: Center(
            child: Text("Calculator",style: TextStyle(
                fontSize: 20.0
            ),), 
          ),
          backgroundColor: Colors.black87,
        ),
        drawer: Drawer(
          
          child: ListView(
          
              children: <Widget>[
                
                UserAccountsDrawerHeader(
                  
                    accountName: Text("Muhammad Muneeb"),
                    accountEmail: Text("muhammadmuneeb107@gmail.com"),
                    arrowColor: Colors.red,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ListTile(
                        
                        title: Text("Home",style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white70
                         ),
                        ),
                        trailing: Icon(
                          Icons.arrow_right
                          ),
                      ),
                      Divider(),
                      ListTile(
                          title: Text("List",style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white70
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_right
                            ),
                      )
                    ],
                  ), 
                ),
                ]
                  
                  // ListTile(
                  //  title: Text("Pagetwo"),
                  //  trailing: Row(
                  //    children: <Widget>[
                  //      Icon(Icons.add_shopping_cart),
                  //      Icon(Icons.add_to_photos)
                  //    ],
                  //  ), 
                  // )
              
          )
              
              
        ),
        body: Container(
         padding: const EdgeInsets.all(20.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: <Widget>[
              // Center(
              //   child:Container(
              //   width: 150.0,
              //   height: 150.0,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     image: DecorationImage(
              //       image: AssetImage("assets/img/muneeb.JPG"),
              //       fit: BoxFit.fill,
              //     )
              //     ),
              // ) ,
              // ),
              Center(
                child:Text("Calculator App",style:TextStyle(
                  fontFamily:"Roboto",
                  color: Colors.red,
                  fontSize: 35.0
                  ))
              ),
              Center(
                child: Text("Output : "+sum.toString(),style:TextStyle(
                  
                  fontFamily:"Roboto",
                  color: Colors.red,
                  fontSize: 30.0
                  )), 
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
                controller: myController1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color:Colors.teal,
                    fontSize: 20.0 
                  ),
                  labelText: "Enter No 2"

                ), 
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0)
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("+",style: TextStyle(
                        fontSize: 20.0
                      ),
                      ),
                      onPressed:doAdd,
                      color: Colors.teal,
                      textColor: Colors.white,
                      ),
                      RaisedButton(
                      child: Text("-",style: TextStyle(
                        fontSize: 20.0
                      ),
                      ),
                      onPressed:doSub,
                      color: Colors.teal,
                      textColor: Colors.white,
                      ),
                      RaisedButton(
                      child: Text("*",style: TextStyle(
                        fontSize: 20.0
                      ),
                      ),
                      onPressed: doMult,
                      color: Colors.teal,
                      textColor: Colors.white,
                      ),
                      RaisedButton(
                      child: Text("/",style: TextStyle(
                        fontSize: 20.0
                      ),
                      ),
                      onPressed: doDiv,
                      color: Colors.teal,
                      textColor: Colors.white,
                      ),
                  ],
              )
              
            ],

          )
        )
        
    );
  }
}