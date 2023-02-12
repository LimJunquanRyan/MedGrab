import 'package:flutter/material.dart';
import 'package:medgrab/components/bottomAppBar.dart';
import 'package:gauges/gauges.dart';

class summaryPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hi <insert name>, here's a summary of your vitals", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              Text("Click on each chart for more information", style: TextStyle(fontSize: 11)),
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        //onTap: () { Navigator.pushNamed(context, ModalRoute.withName(base.HEARTRATE)); },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.38,
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.monitor_heart, color: Colors.black, size: 35),
                                Text("HEART RATE >", style: TextStyle(fontSize: 20),),
                                RadialGauge(
                                  radius: MediaQuery.of(context).size.height * 0.1,
                                  axes: [
                                    RadialGaugeAxis(
                                      color: Colors.black,
                                      minValue: 0,
                                      maxValue: 220,
                                      minAngle: -150,
                                      maxAngle: 150,
                                      segments: [
                                        RadialGaugeSegment(minValue: 0, maxValue: 50, minAngle: -150, maxAngle: -82, color: Colors.red),
                                        RadialGaugeSegment(minValue: 50, maxValue: 170, minAngle: -82, maxAngle: 82, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: 170, maxValue: 220, minAngle: 82, maxAngle: 150, color: Colors.green),
                                      ],
                                      pointers: [
                                        RadialNeedlePointer(value: 110, length: 0.6, knobRadiusAbsolute: 0, thickness: 2)
                                      ]
                                    ),
                                  ],
                                ),
                                Text("BPM", style: TextStyle(fontSize: 15),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        //onTap: () { Navigator.pushNamed(context, ModalRoute.withName(base.GLUCOSELEVELS)); },
                        child: Container(
                        height: MediaQuery.of(context).size.height * 0.38,
                        width: MediaQuery.of(context).size.width * 0.94,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.bloodtype, color: Colors.black, size: 35),
                              Text("GLUCOSE LEVELS >", style: TextStyle(fontSize: 20),),
                              RadialGauge(
                                radius: MediaQuery.of(context).size.height * 0.1,
                                axes: [
                                  RadialGaugeAxis(
                                      color: Colors.black,
                                      minValue: 0,
                                      maxValue: 220,
                                      minAngle: -150,
                                      maxAngle: 150,
                                      segments: [
                                        RadialGaugeSegment(minValue: 0, maxValue: 50, minAngle: -150, maxAngle: -82, color: Colors.red),
                                        RadialGaugeSegment(minValue: 50, maxValue: 170, minAngle: -82, maxAngle: 82, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: 170, maxValue: 220, minAngle: 82, maxAngle: 150, color: Colors.green),
                                      ],
                                      pointers: [
                                        RadialNeedlePointer(value: 110, length: 0.6, knobRadiusAbsolute: 0, thickness: 2)
                                      ]
                                  ),
                                ],
                              ),
                              Text("mg/DL", style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                      ),
                      GestureDetector(
                        //onTap: () { Navigator.pushNamed(context, ModalRoute.withName(base.BLOODPRESSURE)); },
                        child: Container(
                        height: MediaQuery.of(context).size.height * 0.38,
                        width: MediaQuery.of(context).size.width * 0.94,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.device_thermostat, color: Colors.black, size: 35),
                              Text("BLOOD PRESSURE >", style: TextStyle(fontSize: 20),),
                              RadialGauge(
                                radius: MediaQuery.of(context).size.height * 0.1,
                                axes: [
                                  RadialGaugeAxis(
                                      color: Colors.black,
                                      minValue: 0,
                                      maxValue: 220,
                                      minAngle: -150,
                                      maxAngle: 150,
                                      segments: [
                                        RadialGaugeSegment(minValue: 0, maxValue: 50, minAngle: -150, maxAngle: -82, color: Colors.red),
                                        RadialGaugeSegment(minValue: 50, maxValue: 170, minAngle: -82, maxAngle: 82, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: 170, maxValue: 220, minAngle: 82, maxAngle: 150, color: Colors.green),
                                      ],
                                      pointers: [
                                        RadialNeedlePointer(value: 110, length: 0.6, knobRadiusAbsolute: 0, thickness: 2)
                                      ]
                                  ),
                                ],
                              ),
                              Text("mmHg", style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                      ),
                      GestureDetector(
                        //onTap: () { Navigator.pushNamed(context, ModalRoute.withName(base.ELECTROMYOGRAPHY)); },
                        child: Container(
                        height: MediaQuery.of(context).size.height * 0.38,
                        width: MediaQuery.of(context).size.width * 0.94,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.offline_bolt, color: Colors.black, size: 35),
                              Text("ELECTROMYOGRAPHY >", style: TextStyle(fontSize: 20),),
                              RadialGauge(
                                radius: MediaQuery.of(context).size.height * 0.1,
                                axes: [
                                  RadialGaugeAxis(
                                      color: Colors.black,
                                      minValue: 0,
                                      maxValue: 220,
                                      minAngle: -150,
                                      maxAngle: 150,
                                      segments: [
                                        RadialGaugeSegment(minValue: 0, maxValue: 50, minAngle: -150, maxAngle: -82, color: Colors.red),
                                        RadialGaugeSegment(minValue: 50, maxValue: 170, minAngle: -82, maxAngle: 82, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: 170, maxValue: 220, minAngle: 82, maxAngle: 150, color: Colors.green),
                                      ],
                                      pointers: [
                                        RadialNeedlePointer(value: 110, length: 0.6, knobRadiusAbsolute: 0, thickness: 2)
                                      ]
                                  ),
                                ],
                              ),
                              Text("m/s", style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }
}