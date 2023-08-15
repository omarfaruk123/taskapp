import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../style/style.dart';

class splashScreen extends StatefulWidget{
  const splashScreen({Key? key}) : super(key : key);

  @override
  State<StatefulWidget> createState() {
    return splashScreenState();
  }
}

class splashScreenState extends State<splashScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Center(
                child: Text('splash section')
            ),
          )
        ],
      ),
    );
  }

}