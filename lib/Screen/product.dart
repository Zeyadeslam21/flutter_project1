import 'package:day3/Screen/Details.dart';
import 'package:day3/Widget/custome_item.dart';
import 'package:day3/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class product extends StatelessWidget {
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<product_provider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('product'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child:Consumer(
          builder: (context,product_provider value, child) {
            var data=value.obj?.data;
            if(data==null)
              {
                p.get();
                return Center(child: CircularProgressIndicator(),);
              }
            else{
              return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 20,
              ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              var zeyad=data[index];
              return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => details(name: zeyad["name"], image: zeyad["image"], descripthion: zeyad["description"]),));
            },
            child: custome_item(name: zeyad["name"], image: zeyad["image"], price: zeyad["price"]),
            );

            },
              );
            }
          },
        )
      ),
    );
  }
}
