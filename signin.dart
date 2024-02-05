import 'package:flutter/material.dart';

class signin extends StatelessWidget {
  final Function()? onTap;


const signin({
  super.key,
  required this.onTap,
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
      child: Center(child:Text("Sign In",style: TextStyle(color: Colors.white),),
      )
    ),
    );
  }
}
