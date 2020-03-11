import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import './components/horizental_List.dart';
import './components/products.dart';
class FashionHome extends StatefulWidget {
  @override
  _FashionHomeState createState() => _FashionHomeState();
}

class _FashionHomeState extends State<FashionHome> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel= Container(
        height: 200.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
              AssetImage("assets/img/img1.jpg"),
              AssetImage("assets/img/img2.jpg"),
              AssetImage("assets/img/img3.jpg"),
              AssetImage("assets/img/img4.jpg"),
              AssetImage("assets/img/img5.jpg"),
              AssetImage("assets/img/img6.jpg"),

          ], 
          autoplay:true,
          animationDuration: Duration(milliseconds: 2000),
          
        ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("E-Fashion"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search,color:Colors.white),
               
              onPressed: (){}
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart,color:Colors.white),
                onPressed: (){},
                )

          ],
        ),
        drawer: Drawer(
          child: ListView(
                // Drawer
              children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("Muhammad Muneeb"), 
                    accountEmail: Text("muhammadmuneeb107@gmail.com"),
                    currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person,color:Colors.black),
                    )                 
                    ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                       title: Text("Home"),
                       leading: Icon(Icons.home,color:Colors.teal),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                       title: Text("My Account"),
                       leading: Icon(Icons.account_circle,color:Colors.teal),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                       title: Text("My Order"),
                       leading: Icon(Icons.shopping_basket,color:Colors.teal),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                       title: Text("Categories"),
                       leading: Icon(Icons.dashboard,color:Colors.teal),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                       title: Text("Favourite"),
                       leading: Icon(Icons.favorite,color:Colors.teal),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                       title: Text("Setting"),
                       leading: Icon(Icons.settings,color:Colors.teal),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                       title: Text("About"),
                       leading: Icon(Icons.help,color:Colors.teal),
                      ),
                    )

              ],
          ), 
        ),
        body: ListView(
          children: <Widget>[
              //Images Carousel //Slider
              image_carousel,
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:Text("Categories") ,
                ),
                Divider(),
                //Horizental List 
                List(),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Recent Product"),
                ),
                //Products
                Container(
                  height: 310.0,
                  child: Product(), 
                )
          ], 
        ),

    );
  }
}