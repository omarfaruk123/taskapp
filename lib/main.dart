import 'package:flutter/material.dart';
import 'package:task/screen/onboarding/emailVerificationScreen.dart';
import 'package:task/screen/onboarding/loginScreen.dart';
import 'package:task/screen/onboarding/pinVerificationScreen.dart';
import 'package:task/screen/onboarding/registrationScreen.dart';
import 'package:task/screen/onboarding/setPasswordScreen.dart';
import 'package:task/screen/task/createTaskScreen.dart';
import 'package:task/screen/task/homeScreen.dart';
import 'package:task/utility/utility.dart';

 main() async{
   WidgetsFlutterBinding.ensureInitialized();
   String? token = await ReadUserData('token');
   if(token==null){
     runApp(MyApp('/login'));

   }else{
     runApp( MyApp('/'));
   }

}

class MyApp extends StatelessWidget{
   final String firstRoute;
   MyApp(this.firstRoute);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Task Management",
      debugShowCheckedModeBanner: false,
      initialRoute: firstRoute,
      routes: {
        '/':(context)=> homeScreen(),
        '/login':(context)=> loginScreen(),
        '/registration':(context)=> registrationScreen(),
        '/emailVerification':(context)=> emailVerificationScreen(),
        '/pinVerification':(context)=> pinVerificationScreen(),
        '/setPassword':(context)=> setPasswordScreen(),
        '/taskCreate':(context)=> createTaskScreen(),
      },
    );
  }
}