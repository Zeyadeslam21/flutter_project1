import 'package:flutter/material.dart';
class custome_item extends StatelessWidget {
   custome_item({super.key,required this.name,required  this.image,required this.price});
  String name;
  String image;
  num price;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Expanded(child: Image.network(image)),
          SizedBox(height: 10,),
          Text(name,style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),

           Text(price.toString(),style: TextStyle(fontSize: 20),),

        ],
      ),
    );
  }
}
