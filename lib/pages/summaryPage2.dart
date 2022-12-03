import 'package:flutter/material.dart';

class summaryPage2 extends StatelessWidget {
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
                  Text("BLOOD PRESSURE >"),
                  Text("<insert blood pressure>"),
                  Text("mmHg"),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Icon(Icons.monitor_heart),
                  Text("ELECTROMYOGRAPHY >"),
                  Text("<insert electromyography>"),
                  Text("m/s"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}