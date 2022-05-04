import 'package:alnawawiforty/db/mydatabase.dart';
import 'package:alnawawiforty/model/hadith.dart';
import 'package:alnawawiforty/screens/localaudio.dart';
import 'package:alnawawiforty/utils/color.dart';
import 'package:alnawawiforty/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AudioHadithScreen extends StatefulWidget {
  @override
  State<AudioHadithScreen> createState() => _AudioHadithScreenState();
}

class _AudioHadithScreenState extends State<AudioHadithScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
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
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(""),
                          SvgPicture.asset("assets/svg/logo.svg"),
                          SvgPicture.asset("assets/svg/arrow-right.svg"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextApp.bookTwoScreen,
                          //TextApp.headerHomeScreen,
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "assets/svg/background.svg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  FutureBuilder(
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                          ),
                          itemCount: 42,
                          itemBuilder: ((context, int index) {
                            Hadith item = snapshot.data[index];
                            return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) => LocalAudio(
                                            hadith: item,
                                            localAudioPath:
                                                "audio/" + item.audioHadith,
                                          )));
                                },
                                child: AYah(item.key, item.nameHadith));
                          }),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                    future: Mydata.getAlldata(),
                  )
                ],
              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}

Widget AYah(String key, name) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset("assets/img.png"),
      SvgPicture.asset("assets/svg/grey.svg"),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(key,
              style: TextStyle(
                  fontFamily: "assets/fonts/Tajawal-Bold.ttf",
                  fontSize: 12,
                  color: ColorApp.green2)),
          Text(
            name,
            style: TextStyle(
                fontFamily: "assets/fonts/Tajawal-Bold.ttf",
                fontSize: 18,
                color: ColorApp.green2,
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
    ],
  );
}
