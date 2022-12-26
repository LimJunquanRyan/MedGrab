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
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.14),
              width: MediaQuery.of(context).size.width * 0.935,
              height: MediaQuery.of(context).size.height * 0.19,
              alignment: Alignment.center,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Expanded(child: TextButton(onPressed: () { Navigator.pushNamed(context, base.SUMMARYPAGE); }, child: ListTile(title: Text("Take a live reading", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)), subtitle: Text("from MedGrab", style: TextStyle(fontSize: 15),),))),
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