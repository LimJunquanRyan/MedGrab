import 'package:flutter/material.dart';
import 'package:medgrab/pages/liveReading.dart';
import 'package:medgrab/pages/mainPage.dart';
import 'package:medgrab/pages/summaryPage1.dart';
import 'package:medgrab/pages/summaryPage2.dart';

void main() {
  runApp(base());
}

class base extends StatelessWidget {
  static const MAINPAGE = '/';
  static const LIVEREADING  = '/liveReading';
  static const SUMMARYPAGE1 = '/summaryPage1';
  static const SUMMARYPAGE2 = '/summaryPage2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MedGrab",
      initialRoute: '/',
      routes: {
        MAINPAGE: (context) => mainPage(),
        LIVEREADING: (context) => liveReading(),
        SUMMARYPAGE1: (context) => summaryPage1(),
        SUMMARYPAGE2: (context) => summaryPage2(),
      },
      theme: ThemeData(
          primarySwatch: Colors.grey,
          bottomAppBarTheme: BottomAppBarTheme(color: Colors.black, shape: CircularNotchedRectangle()),
          textButtonTheme: TextButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF78B59F)),)),
          //textStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700, color: Colors.white,))
          iconTheme: IconThemeData(color: Color(0xFF78B59F)),
        listTileTheme: ListTileThemeData(textColor: Colors.white),
      ),
    );
  }

}

