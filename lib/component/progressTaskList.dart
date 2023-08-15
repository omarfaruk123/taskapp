import 'package:flutter/material.dart';

class progressTaskList extends StatefulWidget{
  const progressTaskList({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return progressTaskListState();
  }
}

class progressTaskListState extends State<progressTaskList>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text('progress'),
    );
  }
}