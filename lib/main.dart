import 'package:flutter/material.dart';
import 'package:project/screens/login_screen.dart';
import 'package:project/screens/navigation_screen.dart';
import 'package:project/screens/onboarding_screen.dart';
import 'package:project/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Uno' Pharmacy",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFEF6969),
      ),
      home: LoginScreen(),
    );
  }
}
