import 'package:flutter/material.dart';
import 'package:majorproject/todolist/button.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  Dialogbox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,

  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red,
      content: Container(
        height: 200,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[ TextField(
               controller: controller ,
               decoration: InputDecoration(
               border: OutlineInputBorder(),
               hintText: "Enter New Task",
          ),
        ),
      Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          Mybutton(text:"Save", onpressed: onSave),
          const SizedBox(width: 20,),

          Mybutton(text: "Cancel", onpressed: onCancel)


        ]
      )
]),
      ),

    );
  }
}
