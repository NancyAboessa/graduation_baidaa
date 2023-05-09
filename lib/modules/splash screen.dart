import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_baidaa/modules/loginScreen.dart';
import 'package:graduation_baidaa/shared/componants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[900],
      body: AnimatedSplashScreen(
        splash: 'assets/imeges/Orange Nature Have a Nice Day Mobile Video.png',
        duration: 10,

         splashIconSize: 1100,
         centered: true,
         backgroundColor:  CupertinoColors.darkBackgroundGray,

         nextScreen:login(),

      ),
    );
  }
}
