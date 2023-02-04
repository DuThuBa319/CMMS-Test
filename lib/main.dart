import 'package:cmms_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 0, 29, 55)),
      home: AnimatedSplashScreen(
          splashIconSize: 150,
          centered: true,
          duration: 2000,
          splashTransition: SplashTransition.sizeTransition,
          splash: 'lib/assets/CHA_logo.png',
          pageTransitionType: PageTransitionType.rightToLeft,
          nextScreen: const HomeScreen()),
    );
  }
}
