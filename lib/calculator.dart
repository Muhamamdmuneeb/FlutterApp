import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
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
          backgroundColor: Colors.grey[800],
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

