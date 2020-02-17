
import 'package:flutter/material.dart';



void main()=>runApp(Myapp());
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Loginpage",
        theme: ThemeData(
          fontFamily: "Roboto",
          primaryColor: Colors.green[900],
          primarySwatch: Colors.teal,
          brightness: Brightness.dark,
          accentColor: Colors.white

         ),
         home: LoginPage(),
    );
  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
             title: Center(
               child:Text("Login Page")
             ),
            
           ),
           body: Stack(
             fit: StackFit.expand,
              children: <Widget>[
                 
                    Image(
                      
                      image: AssetImage("assets/img/logo.png"),
                      fit: BoxFit.cover,
                      color: Colors.black87,
                      colorBlendMode: BlendMode.hardLight,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("LOGO",
                          style:TextStyle(fontSize: 60.0,color: Colors.green)
                          
                          ),
                          Form(
                              child: Theme(
                                  data: ThemeData(
                                    fontFamily:"Roboto",
                                    brightness: Brightness.dark,
                                    primarySwatch: Colors.green,
                                    inputDecorationTheme: InputDecorationTheme(
                                        labelStyle: TextStyle(
                                          fontSize: 40.0,
                                          color: Colors.green,
                                          
                                        ),
                                       

                                    ) 
                                    ),
                                  child: Container(
                                    padding: const EdgeInsets.all(40.0),
                                      child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center, 
                                      
                                    children: <Widget>[
                                      TextFormField(
                                        decoration: InputDecoration(
                                          labelText: "Enter an Email",
                                          labelStyle: TextStyle(
                                              fontSize: 25.0,
                                              color: Colors.green
                                          )
                                        ), 
                                        keyboardType: TextInputType.emailAddress,
                                      ),
                                      TextFormField(
                                        decoration:InputDecoration(
                                            labelText: "Enter a Password",
                                            labelStyle: TextStyle(
                                              fontSize:25.0,
                                              color: Colors.green
                                            )
                                        ) ,
                                        keyboardType: TextInputType.text,
                                        obscureText: true, 
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:12.0)
                                        ),
                                         RaisedButton(
                                           child: Text("Login"),
                                           color: Color(0xff00b300),
                                           textColor: Colors.white,
                                           
                                           splashColor: Colors.grey,
                                           padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                           onPressed: null, 
                                           
                                           )
                                    ],
                                ),
                                  ),
                              ),
                            )
                        ],
                    )
              ],
           ),

    );
  }
}