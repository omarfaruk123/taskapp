import 'package:flutter/material.dart';

class cancelTaskList extends StatefulWidget{
  const cancelTaskList({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return cancelTaskListState();
  }
}

class cancelTaskListState extends State<cancelTaskList>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text('Cancel'),
    );
  }
}