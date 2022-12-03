import 'package:flutter/material.dart';
import 'package:medgrab/components/bottomAppBar.dart';
import 'package:medgrab/pages/main.dart';

class liveReading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(13.0, 23.0, 13.0, 0.0),
              alignment: Alignment.center,
              child: Card(
                child: Column(
                  children: <Widget>[
                    TextButton(onPressed: () { Navigator.pushNamed(context, base.SUMMARYPAGE1); }, child: ListTile(title: Text("Take a live reading"), subtitle: Text("from MedGrab"),)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }
}