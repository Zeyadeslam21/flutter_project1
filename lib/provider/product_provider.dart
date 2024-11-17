import 'package:day3/model/product_model.dart';
import 'package:day3/services/product_services.dart';
import 'package:flutter/cupertino.dart';

class product_provider extends ChangeNotifier
{
  product_model?obj;
  Future<void>get() async
  {
    obj=await product_services.get();
    notifyListeners();
  }
}