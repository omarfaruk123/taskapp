import 'package:flutter/material.dart';
import 'package:task/component/appBottomNav.dart';
import 'package:task/component/cancelTaskList.dart';
import 'package:task/component/completedTaskList.dart';
import 'package:task/component/newTaskList.dart';
import 'package:task/component/progressTaskList.dart';

import '../../component/TaskAppBar.dart';
import '../../utility/utility.dart';

class homeScreen extends StatefulWidget{
  const homeScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return homeScreenState();
  }
}

class homeScreenState extends State<homeScreen>{

  Map<String,String> ProfileData={"email":"","firstName":"","lastName":"","photo":DefaultProfilePic};
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

  ReadAppBarData() async {
    String? email= await ReadUserData('email');
    String? firstName= await ReadUserData('firstName');
    String? lastName= await ReadUserData('lastName');
    String? photo= await ReadUserData('photo');
    setState(() {
      ProfileData={"email":'$email',"firstName":'$firstName',"lastName":'$lastName',"photo":DefaultProfilePic};
    });
  }

  @override
  void initState() {
    ReadAppBarData();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: TaskAppBar(context,ProfileData),
      body: widgetOptions.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav(TabIndex,onItemTapped),
    );
  }
}