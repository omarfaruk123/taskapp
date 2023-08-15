import 'package:flutter/material.dart';

class completeTaskList extends StatefulWidget{
  const completeTaskList({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return completeTaskListState();
  }
}

class completeTaskListState extends State<completeTaskList>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text('completed'),
    );
  }
}