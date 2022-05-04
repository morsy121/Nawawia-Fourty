import 'package:alnawawiforty/model/hadith.dart';
import 'package:alnawawiforty/networking/networkingpage.dart';
import 'package:alnawawiforty/screens/localaudio.dart';
import 'package:alnawawiforty/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class HomeHadith extends StatefulWidget {
  Hadith hadith;
  HomeHadith({this.hadith});

  @override
  State<HomeHadith> createState() => _HomeHadithState();
}

class _HomeHadithState extends State<HomeHadith> {
  bool bol = true;
  bool clickedcenterfab = false;
  int selectedIndex = 0;
  String text = "";

  @override
  void initState() {
    text = widget.hadith.textHadith;
    super.initState();
  }

  updateTapSection(int index, String btnText) {
    setState(() {
      selectedIndex = index;
    });
    text = btnText + "/n";
  }

  Widget getWidget(bool bol) {
    if (bol) {
      return NetworkingPage(data: text, hadith: widget.hadith);
    } else {
      return LocalAudio(
          hadith: widget.hadith,
          localAudioPath: "audio/" + widget.hadith.audioHadith);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          getWidget(bol),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black45,
        onPressed: () {
          setState(() {
            clickedcenterfab != clickedcenterfab;
          });
          Share.share(text, subject: widget.hadith.textHadith);
        },
        tooltip: "Centre FAB",
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.share),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                //update the bottom app bar view each time an item is clicked
                onPressed: () {
                  bol = true;
                  updateTapSection(0, widget.hadith.textHadith);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.book,
                  //darken the icon if it is selected or else give it a different color
                  color: selectedIndex == 0 ? ColorApp.green2 : Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  bol = true;
                  updateTapSection(1, widget.hadith.explanationHadith);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.library_books,
                  color: selectedIndex == 1 ? ColorApp.green2 : Colors.white,
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              IconButton(
                onPressed: () {
                  bol = true;
                  updateTapSection(2, widget.hadith.translateNarrator);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.collections_bookmark,
                  color: selectedIndex == 2 ? ColorApp.green2 : Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  bol = false;
                  updateTapSection(
                      3, widget.hadith.key + ' \n' + widget.hadith.nameHadith);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.volume_up,
                  color: selectedIndex == 3 ? ColorApp.green2 : Colors.white,
                ),
              )
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        //color of the BottomAppBar
        color: ColorApp.primary,
      ),
    );
  }
}
