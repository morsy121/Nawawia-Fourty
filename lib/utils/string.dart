import 'package:alnawawiforty/utils/color.dart';
import 'package:flutter/material.dart';

abstract class TextApp {
  static const Text splashScreen = const Text(
    "ألاربعون النووية",
    style: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
  );

  static const Text topHomeScreen = const Text(
    "ألاربعون النووية",
    textDirection: TextDirection.rtl,
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
  );
  static const Text headerHomeScreen = const Text(
    "لحفظ وسماع الاحاديث النووية",
    style: TextStyle(
        color: Colors.green, fontWeight: FontWeight.bold, fontSize: 30),
  );

  static const Text bookOneScreen = const Text(
    "ألأحاديث الاربعون",
    style: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
  );
  static const Text bookTwoScreen = const Text(
    "ألأستماع للأحاديث",
    style: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.green, fontSize: 22),
  );
  static const Text bookThreeScreen = const Text(
    "ألأحاديث المحفوظة",
    style: TextStyle(
        fontWeight: FontWeight.bold, color: ColorApp.primary, fontSize: 22),
  );
}
