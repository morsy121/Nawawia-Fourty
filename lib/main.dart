import 'package:alnawawiforty/screens/hadithscreen.dart';
import 'package:alnawawiforty/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Azkar',
        home: SplashScreen());
  }
}