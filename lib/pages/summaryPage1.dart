import 'package:flutter/material.dart';

class summaryPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Hi <insert name>, here's a summary of your vitals"),
            Text("Click on each chart for more information"),
            Card(
              child: Column(
                children: [
                  Icon(Icons.monitor_heart),
                  Text("HEART RATE >"),
                  Text("<insert heart rate>"),
                  Text("BPM"),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Icon(Icons.monitor_heart),
                  Text("GLUCOSE LEVELS >"),
                  Text("<insert glucose levels>"),
                  Text("mg/DL"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}