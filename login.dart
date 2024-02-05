import 'package:flutter/material.dart';
import 'package:majorproject/components.dart';
import 'package:majorproject/homepage.dart';
import 'package:majorproject/signin.dart';

class loginpage extends StatelessWidget {
   loginpage({super.key});

  final usernameController = TextEditingController();
  final passwordController= TextEditingController();

  MaterialApp signUserin(){
      return MaterialApp(
        home: HomePage()
      );
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Icon(
              Icons.lock,
              size: 100,
            ),
            SizedBox(height: 50,),

            Text("Welcome",style: TextStyle(color:  Colors.grey[700],fontSize: 30),
            ),
            SizedBox(height: 50,),
            textfield(
              controller: usernameController,
              hintText: "Username",
              obscureText: false,
            ),
            SizedBox(height: 50,),
            textfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            SizedBox(height: 50),

            signin(
              onTap: signUserin,
            ),



          ],
         )
       ),
      )
    );
  }
}



