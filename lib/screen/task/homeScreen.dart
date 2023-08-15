import 'package:flutter/material.dart';
import 'package:task/component/appBottomNav.dart';
import 'package:task/component/cancelTaskList.dart';
import 'package:task/component/completedTaskList.dart';
import 'package:task/component/newTaskList.dart';
import 'package:task/component/progressTaskList.dart';

class homeScreen extends StatefulWidget{
  const homeScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return homeScreenState();
  }
}

class homeScreenState extends State<homeScreen>{
  int TabIndex=0;

  onItemTapped(int index){
    setState(() {
      TabIndex=index;
    });
  }

  final widgetOptions =[
    newTaskList(),
   progressTaskList(),
   completeTaskList(),
   cancelTaskList()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('home'),),
      body: widgetOptions.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav(TabIndex,onItemTapped),
    );
  }
}