import 'dart:typed_data';

import 'package:shared_preferences/shared_preferences.dart';

String DefaultProfilePic="data:image/jpeg;base64,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";

Future<void> WriteUserData(UserData) async{
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('token',UserData['token']);
  await prefs.setString('email',UserData['data']['email']);
  await prefs.setString('firstName',UserData['data']['firstName']);
  await prefs.setString('lastName',UserData['data']['lastName']);
  await prefs.setString('mobile',UserData['data']['mobile']);
  await prefs.setString('photo',UserData['data']['photo']);
}

Future<void> WriteEmailVerification(Email) async{
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('EmailVerification', Email);
}

Future<void> WriteOTPVerification(OTP) async{
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('OTPVerification', OTP);

}

Future<String?> ReadUserData(key) async{
  final prefs = await SharedPreferences.getInstance();
  String? mydata = await prefs.getString(key);
  return mydata;
}

Future<bool> RemoveToken() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  return true;
}

ShowBase64Image(Base64String){
  UriData? data= Uri.parse(Base64String).data;
  Uint8List MyImage= data!.contentAsBytes();
  return MyImage;
}