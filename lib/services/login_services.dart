import 'package:day3/model/login_model.dart';
import 'package:dio/dio.dart';

class login_services
{
  static Dio dio =Dio();
  static Future<login_model>fetch(String email,String password) async
  {
    final response=await dio.post('https://student.valuxapps.com/api/login',data:
        {
          "email":email,
          "password":password,
        }
    );
    print(response.data);
    return login_model.fromjeson(response.data);
  }
}