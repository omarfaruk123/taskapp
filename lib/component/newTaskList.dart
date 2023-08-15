import 'package:flutter/material.dart';

class newTaskList extends StatefulWidget{
  const newTaskList({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return newTaskListState();
  }
}

class newTaskListState extends State<newTaskList>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
        child: Text("new task list"),
      ),
    );
  }
}