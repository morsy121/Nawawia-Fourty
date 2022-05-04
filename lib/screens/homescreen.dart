import 'package:alnawawiforty/screens/audiohadithscreen.dart';
import 'package:alnawawiforty/screens/hadithscreen.dart';
import 'package:alnawawiforty/screens/savedscreen.dart';
import 'package:alnawawiforty/utils/color.dart';
import 'package:alnawawiforty/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              "assets/svg/background.svg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SvgPicture.asset("assets/svg/logo.svg"),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextApp.topHomeScreen,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextApp.headerHomeScreen,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => HadithScreen()));
                      },
                      child: myCard(
                          ColorApp.primary,
                          ColorApp.darkPrimary,
                          "assets/svg/one.svg",
                          "assets/quran.png",
                          TextApp.bookOneScreen),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => AudioHadithScreen()));
                      },
                      child: myCard(
                          ColorApp.red1,
                          ColorApp.green2,
                          "assets/svg/twoo.svg",
                          "assets/play.png",
                          TextApp.bookTwoScreen),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => SavedScreen()));
                      },
                      child: myCard(
                          ColorApp.voilent,
                          ColorApp.red1,
                          "assets/svg/three.svg",
                          "assets/save-instagram.png",
                          TextApp.bookThreeScreen),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget myCard(Color color1, color2, String path1, path2, Text text) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 46,
      left: 20,
      right: 20,
    ),
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(10, 8),
              blurRadius: 10,
            )
          ],
          gradient: LinearGradient(
            colors: [color1, color2],
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(path2),
          text,
          SvgPicture.asset(path1),
        ],
      ),
    ),
  );
}
