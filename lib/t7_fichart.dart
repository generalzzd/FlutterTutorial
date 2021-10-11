import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Generalzzd Fi Chart Demo',
      home: Scaffold(
        appBar: null,
        body: Column(
          children: [
            Text("data"),
            ZDChartWidget(),
          ],
        ),
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
    return Column(
      children: [
        Text("ksakd"),
      ],
    );
  }
}
