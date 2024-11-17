import 'package:day3/Screen/Login.dart';
import 'package:day3/provider/signup_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widget/text_fild.dart';
class signup extends StatelessWidget {
  signup({super.key});
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController phone=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<signup_provider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('signup'),
      ),
      body: Consumer(
        builder: (context,signup_provider value, child) {
          var data=value.obj?.data;
          return Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                text_fild(controller: email, text: "Email"),
                SizedBox(height: 20,),
                text_fild(controller: password, text: "Password"),
                SizedBox(height: 20,),
                text_fild(controller: name, text: "Name"),
                SizedBox(height: 20,),
                text_fild(controller: phone, text: "Phone"),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: ()async{
                    if(await value.fetchdata(email.text, password.text,name.text,phone.text))
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                    }
                    else{
                      print("Invalid");
                    }
                  },
                  child: Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Center(child: Text('Signup',style: TextStyle(fontSize: 10),),),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Alredy have an account',style: TextStyle(fontSize: 10),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                      },
                      child: Text('Login'),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}