import 'package:day3/model/signup_model.dart';
import 'package:day3/services/signup_services.dart';
import 'package:flutter/cupertino.dart';

class signup_provider extends ChangeNotifier
{
  signup_model?obj;
  Future<bool>fetchdata(String email,String password,String name,String phone) async
  {
  obj=await signup_services.fetchdata(email, password, name, phone);
    notifyListeners();
    return true;
  }
}