import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'heartBeatData.dart';

class LineChartWidget extends StatelessWidget{
  final List<HeartBeat> points;

  const LineChartWidget(this.points, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return AspectRatio(
      aspectRatio: 6,
      child: LineChart(LineChartData(
        lineTouchData: LineTouchData(enabled: false),
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
            isCurved: false,
            dotData: FlDotData(
                show: true,
            ),
            color: Colors.black,
            barWidth: 3,
          ),
        ],
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 25,
            ),
          ),
        ),
      )),
    );
  }
}