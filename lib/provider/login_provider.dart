import 'package:day3/model/login_model.dart';
import 'package:day3/services/login_services.dart';
import 'package:flutter/material.dart';

class login_provider extends ChangeNotifier
{
  login_model?obj;
  Future<bool>fetch(String email,String password) async
  {
   obj= await login_services.fetch(email, password);
    notifyListeners();
    return true;
  }
}