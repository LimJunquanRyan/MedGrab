import 'package:flutter/material.dart';
import 'package:medgrab/pages/consultationPage.dart';
import 'package:medgrab/pages/liveReading.dart';
import 'package:medgrab/pages/mainPage.dart';
import 'package:medgrab/pages/pastMedPage.dart';
import 'package:medgrab/pages/summaryPage.dart';

import 'mapsPage.dart';

void main() {
  runApp(base());
}

class base extends StatelessWidget {
  static const MAINPAGE = '/';
  static const LIVEREADING  = '/liveReading';
  static const SUMMARYPAGE = '/summaryPage';
  static const MAPSPAGE = '/mapsPage';
  static const CONSULTATIONPAGE = '/consultationPage';
  static const PASTMEDPAGE = '/pastMedPage';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MedGrab",
      initialRoute: '/',
      routes: {
        MAINPAGE: (context) => mainPage(),
        LIVEREADING: (context) => liveReading(),
        SUMMARYPAGE: (context) => summaryPage1(),
        MAPSPAGE: (context) => mapsPage(),
        CONSULTATIONPAGE: (context) => consultationPage(),
        PASTMEDPAGE: (context) => pastMedPage(),
      },
      onGenerateRoute: (settings) {},
      theme: ThemeData(
        primarySwatch: Colors.grey,
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.black, shape: CircularNotchedRectangle()),
        textButtonTheme: TextButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF78B59F)),),),
        //textStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700, color: Colors.white,))
        iconTheme: IconThemeData(color: Color(0xFF78B59F)),
        listTileTheme: ListTileThemeData(textColor: Colors.white),
      ),
    );
  }

}

