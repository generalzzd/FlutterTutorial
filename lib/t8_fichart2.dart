import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      title: 'Generalzzd Fi Chart Demo',
      home: Scaffold(
        appBar: null,
        body: ZDChartWidget(),
      ),
    ),
  );
}

class ZDChartWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ZDChartState();
}

class ZDChartState extends State<ZDChartWidget> {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 3),
              FlSpot(2.6, 2),
              FlSpot(4.9, 5),
              FlSpot(6.8, 3.1),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 4),
              FlSpot(12, 0),
              FlSpot(13, -1),
            ],
            isCurved: true,
            barWidth: 5,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
          ),
        ],
      ),
      swapAnimationDuration: Duration(milliseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }
}
