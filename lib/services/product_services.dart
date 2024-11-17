import 'package:day3/model/product_model.dart';
import 'package:dio/dio.dart';

class product_services
{
  static Dio dio=Dio();
  static Future<product_model>get() async
  {
    final response=await dio.get('https://student.valuxapps.com/api/home');
    print(response.data);
    return product_model.fromjeson(response.data);
  }
}