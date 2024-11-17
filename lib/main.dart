import 'package:day3/Screen/Login.dart';
import 'package:day3/provider/login_provider.dart';
import 'package:day3/provider/product_provider.dart';
import 'package:day3/provider/signup_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => login_provider(),),
        ChangeNotifierProvider(create: (context) => signup_provider(),),
        ChangeNotifierProvider(create: (context) => product_provider(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),//kerogierioeuteritueroieurtietou
        home:Login(),
      ),
    );
  }
}

