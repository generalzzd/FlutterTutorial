import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Generalzzd Expaneded And Flexible',
      home: SafeArea(
          child: Scaffold(
        body: ZPage(),
      ))));
}

class ZPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ZPageState();
  }
}

class ZPageState extends State<ZPage> {
  @override
  Widget build(BuildContext context) {
    var left = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("22"),
        Text("1joashdkjas" * 100),
      ],
    );
    var w = Row(
      children: [Flexible(child: left)],
      //children: [left],
    );

    return w;
  }
}
