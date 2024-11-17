import 'package:day3/model/signup_model.dart';
import 'package:dio/dio.dart';

class signup_services{
  static Dio dio=Dio();
  static Future<signup_model>fetchdata(String email,String password,String name,String phone) async
  {
    final response=await dio.post('https://student.valuxapps.com/api/register',data:
        {
          "email":email,
          "password":password,
          "name":name,
          "phone":phone,
        }
    );
    print(response.data);
    return signup_model.fromjeson(response.data);
  }
}