import 'package:flutter/material.dart';
import 'package:majorproject/todolist/dialogbox.dart';
import 'package:majorproject/todolist/uil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  final _controller = TextEditingController();



  List td=[
    ['make ex',false],
    ['Ssss',false]
  ];

  void checkboxchecked(bool? value,int index){
    setState(() {
      td[index][1]=!td[index][1];
    });
  }

  void saveNewTask(){
    setState(() {
      td.add([_controller.text,false]);
    });
    Navigator.of(context).pop();
  }

  void createNewTask(){
    showDialog(context: context, builder: (context){
      return Dialogbox(
        onSave: saveNewTask,
        onCancel: () => Navigator.of(context).pop(),
        controller: _controller ,
      );}
    );
  }

  void deleteTask(int index){
    setState(() {
      td.removeAt(index);
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEBEE),
      appBar: AppBar(
        backgroundColor: Color(0xFFEF5350),
        title: Text('ToDo'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:createNewTask,
          child: Icon(Icons.add ),
      ),
      body:ListView.builder(
        itemCount: td.length,
        itemBuilder: (context,index){
          return ToDo(

              taskName: td[index][0],
              taskCompleted: td[index][1],
              onChanged: (value) => checkboxchecked(value,index),
              deleteFunction: (context) => deleteTask);
        },

          ),
      );
  }
}
