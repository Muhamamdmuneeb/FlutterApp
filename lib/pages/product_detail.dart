import 'package:flutter/material.dart';

class PageDetails extends StatefulWidget {
   final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_old_price;
  final prod_detail_new_price;
  PageDetails({
    this.prod_detail_name,
    this.prod_detail_picture,
    this.prod_detail_old_price,
    this.prod_detail_new_price,

  });
  @override
  _PageDetailsState createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  @override
  Widget build(BuildContext context) {
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
        body: ListView(
         children: <Widget>[
           Container(
              height: 400.0,
              child: GridTile(
                child: Container(
                  child: Image.asset(
                    widget.prod_detail_picture ,
                    
                  ), 
                ),
                footer: Container(
                  child: ListTile(
                      leading: Text(widget.prod_detail_name),
                  ),
                ),

                ),
           )
         ], 
        ),
    );
  }
}