import 'dart:math';

import 'package:flutter/material.dart';
import 'package:medgrab/components/bottomAppBar.dart';
import 'package:gauges/gauges.dart';
import 'package:medgrab/models/Measurements.dart';

class summaryPage1 extends StatelessWidget {
  Measurements measurements = Measurements(
    name: "Name",
    age: 18,
    heartRateReading: Random().nextDouble()*(220-18),
    glucoseReading: Random().nextDouble()*500,
    bloodPressureReading: Random().nextDouble()*220,
    electromyographyReading: Random().nextDouble()*50,
  );

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
                                      color: Colors.white,
                                      minValue: 0,
                                      maxValue: measurements.heartRateValues.max,
                                      minAngle: -150,
                                      maxAngle: 150,
                                      segments: [
                                        RadialGaugeSegment(minValue: 0, maxValue: measurements.heartRateValues.lowerNormal, minAngle: -150, maxAngle: -90, color: Colors.red),
                                        RadialGaugeSegment(minValue: measurements.heartRateValues.lowerNormal, maxValue: measurements.heartRateValues.lowerHealthy, minAngle: -90, maxAngle: -30, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: measurements.heartRateValues.lowerHealthy, maxValue: measurements.heartRateValues.upperHealthy, minAngle: -30, maxAngle: 30, color: Colors.green),
                                        RadialGaugeSegment(minValue: measurements.heartRateValues.upperHealthy, maxValue: measurements.heartRateValues.upperNormal, minAngle: 30, maxAngle: 90, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: measurements.heartRateValues.upperNormal, maxValue: measurements.heartRateValues.max, minAngle: 90, maxAngle: 150, color: Colors.red),
                                      ],
                                      pointers: [
                                        RadialNeedlePointer(value: measurements.heartRateReading, length: 0.6, knobRadiusAbsolute: 0, thickness: 2)
                                      ]
                                    ),
                                  ],
                                ),
                                Text("${measurements.heartRateReading} BPM", style: TextStyle(fontSize: 15),),
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
                                      color: Colors.white,
                                      minValue: 0,
                                      maxValue: measurements.glucoseValues.max,
                                      minAngle: -150,
                                      maxAngle: 150,
                                      segments: [
                                        RadialGaugeSegment(minValue: 0, maxValue: measurements.glucoseValues.lowerNormal, minAngle: -150, maxAngle: -90, color: Colors.red),
                                        RadialGaugeSegment(minValue: measurements.glucoseValues.lowerNormal, maxValue: measurements.glucoseValues.lowerHealthy, minAngle: -90, maxAngle: -30, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: measurements.glucoseValues.lowerHealthy, maxValue: measurements.glucoseValues.upperHealthy, minAngle: -30, maxAngle: 30, color: Colors.green),
                                        RadialGaugeSegment(minValue: measurements.glucoseValues.upperHealthy, maxValue: measurements.glucoseValues.upperNormal, minAngle: 30, maxAngle: 90, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: measurements.glucoseValues.upperNormal, maxValue: measurements.glucoseValues.max, minAngle: 90, maxAngle: 150, color: Colors.red),
                                      ],
                                      pointers: [
                                        RadialNeedlePointer(value: measurements.glucoseReading, length: 0.6, knobRadiusAbsolute: 0, thickness: 2)
                                      ]
                                  ),
                                ],
                              ),
                              Text("${measurements.glucoseReading} mg/DL", style: TextStyle(fontSize: 15),),
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
                                      color: Colors.white,
                                      minValue: 0,
                                      maxValue: measurements.bloodPressureValues.max,
                                      minAngle: -150,
                                      maxAngle: 150,
                                      segments: [
                                        RadialGaugeSegment(minValue: 0, maxValue: measurements.bloodPressureValues.lowerNormal, minAngle: -150, maxAngle: -90, color: Colors.red),
                                        RadialGaugeSegment(minValue: measurements.bloodPressureValues.lowerNormal, maxValue: measurements.bloodPressureValues.lowerHealthy, minAngle: -90, maxAngle: -30, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: measurements.bloodPressureValues.lowerHealthy, maxValue: measurements.bloodPressureValues.upperHealthy, minAngle: -30, maxAngle: 30, color: Colors.green),
                                        RadialGaugeSegment(minValue: measurements.bloodPressureValues.upperHealthy, maxValue: measurements.bloodPressureValues.upperNormal, minAngle: 30, maxAngle: 90, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: measurements.bloodPressureValues.upperNormal, maxValue: measurements.bloodPressureValues.max, minAngle: 90, maxAngle: 150, color: Colors.red),
                                      ],
                                      pointers: [
                                        RadialNeedlePointer(value: measurements.bloodPressureReading, length: 0.6, knobRadiusAbsolute: 0, thickness: 2)
                                      ]
                                  ),
                                ],
                              ),
                              Text("${measurements.bloodPressureReading} mmHg", style: TextStyle(fontSize: 15),),
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
                                      color: Colors.white,
                                      minValue: 0,
                                      maxValue: measurements.electromyographyValues.max,
                                      minAngle: -150,
                                      maxAngle: 150,
                                      segments: [
                                        RadialGaugeSegment(minValue: 0, maxValue: measurements.electromyographyValues.lowerNormal, minAngle: -150, maxAngle: -90, color: Colors.red),
                                        RadialGaugeSegment(minValue: measurements.electromyographyValues.lowerNormal, maxValue: measurements.electromyographyValues.lowerHealthy, minAngle: -90, maxAngle: -30, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: measurements.electromyographyValues.lowerHealthy, maxValue: measurements.electromyographyValues.upperHealthy, minAngle: -30, maxAngle: 30, color: Colors.green),
                                        RadialGaugeSegment(minValue: measurements.electromyographyValues.upperHealthy, maxValue: measurements.electromyographyValues.upperNormal, minAngle: 30, maxAngle: 90, color: Colors.yellow),
                                        RadialGaugeSegment(minValue: measurements.electromyographyValues.upperNormal, maxValue: measurements.electromyographyValues.max, minAngle: 90, maxAngle: 150, color: Colors.red),
                                      ],
                                      pointers: [
                                        RadialNeedlePointer(value: measurements.electromyographyReading, length: 0.6, knobRadiusAbsolute: 0, thickness: 2)
                                      ]
                                  ),
                                ],
                              ),
                              Text("${measurements.electromyographyReading} m/s", style: TextStyle(fontSize: 15),),
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