import "package:flutter/material.dart";
import "package:flutter_slidable/flutter_slidable.dart";

class ToDo extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;


  ToDo({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
      child:Slidable(
       endActionPane: ActionPane(
           motion:StretchMotion(),
           children:[ SlidableAction(
             borderRadius: BorderRadius.circular(20),
         onPressed: deleteFunction,
         icon: Icons.delete,
             backgroundColor: Colors.red,
       ),]
       ),
      child:Container(
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Checkbox(
            value: taskCompleted,
            onChanged: onChanged,
            activeColor: Colors.white,
            shape: CircleBorder (),
             checkColor: Colors.red),

          Text(taskName,

            style:TextStyle(
                decoration:taskCompleted? TextDecoration.lineThrough:TextDecoration.none,
            ),

          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Color(0xFFEF5350),
        borderRadius: BorderRadius.circular(20),
        ),
      ),
    )
    );
  }
}
