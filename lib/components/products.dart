import 'package:flutter/material.dart';
import '../pages/product_detail.dart';
class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var productList=
  [
  {
    "name":"Polo Shirt",
    "picture":"assets/img/products/blue-lacoste-polo.jpg",
    "old_price":120,
    "new_price":90
  },
  {
    "name":"Girls shirt",
    "picture":"assets/img/products/gucci_girl_shirt.jpg",
    "old_price":110,
    "new_price":110
  },
  {
    "name":"Gucci Hoodie",
    "picture":"assets/img/products/gucci_hoodie_men.jpg",
    "old_price":200,
    "new_price":190
  },
  {
    "name":"Gent Suit",
    "picture":"assets/img/products/gucci-gent-Suit.jpg",
    "old_price":5000,
    "new_price":4500
  },
  {
    "name":"Dress Shirt",
    "picture":"assets/img/products/dress_shirt.jpg",
    "old_price":300,
    "new_price":250
  },
  {
    "name":"Dress Shirt New",
    "picture":"assets/img/products/dress-shirt1.jpg",
    "old_price":350,
    "new_price":350
  },
  ];
  ScrollController _scrollController;

@override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
}

  @override
  Widget build(BuildContext context) {
    
    return GridView.builder(
      controller: _scrollController,
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (BuildContext context,int index){
        return SingleProduct(
          prod_name: productList[index]['name'],
          prod_picture: productList[index]['picture'],
          prod_old_price: productList[index]['old_price'],
          prod_new_price: productList[index]['new_price'],
        );
      });
  }
}
class SingleProduct extends StatelessWidget {
  final String prod_name;
  final String   prod_picture;
  final  int prod_old_price;
  final  int prod_new_price;
  SingleProduct({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_new_price
  });
  @override
  Widget build(BuildContext context) {
    return Card(
          child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap:()=> Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>PageDetails(
                  prod_detail_name: prod_name,
                  prod_detail_picture: prod_picture,
                  prod_detail_old_price: prod_old_price,
                  prod_detail_new_price: prod_new_price, 
                )
            )
            ),
            // .push(MaterialPageRoute(
            //   builder: (context)=>PageDetails()
            //   )
            //   ), 
            child: GridTile(
              footer: Container(
                
                color: Colors.white70,
                child: ListTile(
                 
                  leading: Text(prod_name,style: TextStyle(
                    fontWeight: FontWeight.bold ,
                    color: Colors.black
                  ),
                  ),
                  title: Text("\$$prod_new_price",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.teal,
                      
                      
                    ),
                    
                    ),
                  subtitle:  Text("\$$prod_old_price",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.lineThrough

                    ),
                    ),

                ),
              ),
              child: Image.asset(
                prod_picture,
                fit:BoxFit.cover
                )
              ),
          ),
      ),
      ),
    );
  }
}