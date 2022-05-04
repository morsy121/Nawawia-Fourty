import 'dart:async';

import 'package:alnawawiforty/screens/homescreen.dart';
import 'package:alnawawiforty/utils/color.dart';
import 'package:alnawawiforty/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key, key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => HomeScreen())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorApp.primary,
        body: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              "assets/svg/splash.svg",
              fit: BoxFit.cover,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/svg/islamic.svg"),
                  SizedBox(
                    height: 10,
                  ),
                  TextApp.splashScreen,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
