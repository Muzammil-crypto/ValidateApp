import 'package:client_authentication_demo/Screens/UserLoginScreen.dart';
import 'package:client_authentication_demo/Screens/UserConfirmationScreen.dart';
import 'package:client_authentication_demo/Screens/EmailValidateScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
