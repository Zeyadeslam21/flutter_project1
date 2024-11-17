import 'dart:convert';

class product_model
{
  List<dynamic>data;
  product_model({required this.data});
  factory product_model.fromjeson(Map<String,dynamic>json)
  {
    return product_model(data: json["data"]["products"]);
  }
}