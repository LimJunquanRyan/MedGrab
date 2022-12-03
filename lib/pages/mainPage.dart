import 'package:flutter/material.dart';
import 'package:medgrab/components/bottomAppBar.dart';
import 'package:medgrab/pages/main.dart';

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(25.0, 77.0, 25.0, 0.0),
              child: Text("Hi <insert name>! How may we assist you today?"),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(13.0, 23.0, 13.0, 0.0),
              alignment: Alignment.center,
              child: Card(
                child: Column(
                  children: <Widget>[
                    TextButton(onPressed: () {  }, child: ListTile(title: Text("Book an online consultation"), subtitle: Text(""),)),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(13.0, 23.0, 13.0, 0.0),
              alignment: Alignment.center,
              child: Card(
                child: Column(
                  children: <Widget>[
                    TextButton(onPressed: () {  }, child: ListTile(title: Text("View medical records"), subtitle: Text("Last record:"),)),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(13.0, 23.0, 13.0, 0.0),
              alignment: Alignment.center,
              child: Card(
                child: Column(
                  children: <Widget>[
                    TextButton(onPressed: () { Navigator.pushNamed(context, base.LIVEREADING); }, child: ListTile(title: Text("Self Check-Up"), subtitle: Text("Check medical parameters through MedGrab"),)),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Card(),
                Card(),
                Card(),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }
}
