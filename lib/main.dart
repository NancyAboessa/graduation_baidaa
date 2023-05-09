import 'package:flutter/material.dart';
import 'package:graduation_baidaa/layout/homelayout.dart';
import 'package:graduation_baidaa/modules/loginScreen.dart';
import 'package:graduation_baidaa/modules/signup.dart';
import 'package:graduation_baidaa/modules/splash%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}

