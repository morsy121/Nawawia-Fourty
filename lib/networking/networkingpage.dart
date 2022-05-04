import 'package:alnawawiforty/model/hadith.dart';
import 'package:alnawawiforty/networking/networkingpagecontent.dart';
import 'package:flutter/material.dart';

class NetworkingPage extends StatelessWidget {
  final Hadith hadith;
  final String data;
  NetworkingPage({this.hadith, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          NetworkingPageContent(
            data: data,
          ),
        ],
      ),
    );
  }
}
