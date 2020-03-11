import 'package:flutter/material.dart';
class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        
        children: <Widget>[
          Category(
            imageLocation: "assets/img/tshirt.png",
           imageCaption: "Shirts", 
          ),
          Category(
            imageLocation: "assets/img/pents.png",
           imageCaption: "Pants", 
          ),
          Category(
            imageLocation: "assets/img/shoes.png",
           imageCaption: "Shoes", 
          ),
          Category(
            imageLocation: "assets/img/kurti.png",
           imageCaption: "Kurti", 
          ),
           Category(
            imageLocation: "assets/img/makeup.png",
           imageCaption: "Makeup", 
          ),
          Category(
            imageLocation: "assets/img/glasses.png",
           imageCaption: "Glasses", 
          ),
          Category(
            imageLocation: "assets/img/gsuit.png",
           imageCaption: "G-Suits", 
          ),
          Category(
            imageLocation: "assets/img/jewellery.png",
           imageCaption: "Jewellery", 
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {

  final String imageLocation;
  final  String imageCaption;
  Category({
    this.imageLocation,this.imageCaption
  });

  Widget build(BuildContext context) {
    
    return Padding(
        padding: const EdgeInsets.only(top:10.0,bottom: 35.0,),
        child: InkWell(
          onTap: (){},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                imageLocation,
                height: 100.0,
                width: 100.0,
               //  color: Colors.teal,
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top:10.0),
                  alignment: Alignment.topCenter, 
                  child: Text(imageCaption,style: TextStyle(
                      color:Colors.white
                  ),
                  ),
              ),
            ),

          ), 
        ),
    );
  }
}