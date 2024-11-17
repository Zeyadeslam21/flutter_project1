import 'package:flutter/material.dart';
class details extends StatelessWidget {
   details({super.key,required this.name,required this.image,required this.descripthion});
  String name;
  String image;
  String descripthion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: SingleChildScrollView(
    child: Column(
    children: [
    Image.network(image),
    SizedBox(height: 10,),
    Text(name,style: TextStyle(fontSize: 20),),
    SizedBox(height: 10,),
    Text(descripthion),
    ],
    ),
    )
    );
  }
}


