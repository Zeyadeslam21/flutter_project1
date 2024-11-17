import 'package:day3/Screen/product.dart';
import 'package:day3/Screen/signup.dart';
import 'package:day3/Widget/text_fild.dart';
import 'package:day3/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Login extends StatelessWidget {
   Login({super.key});
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<login_provider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Consumer(
        builder: (context,login_provider value, child) {
          var data=value.obj?.data;
          return Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(""),
                ),
                text_fild(controller: email, text: "Email"),
                SizedBox(height: 20,),
                text_fild(controller: password, text: "Password"),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: ()async{
                    if(await value.fetch(email.text, password.text))
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => product(),));
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
                    child: Center(child: Text('Login',style: TextStyle(fontSize: 10),),),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Dont have an account',style: TextStyle(fontSize: 10),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));
                      },
                      child: Text('Registration'),
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
