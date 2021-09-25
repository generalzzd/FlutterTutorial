import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ZScreen(),
      ),
    ));

class ZScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ZScreenState();
}

class ZScreenState extends State<ZScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [buildExpanded(), buildFlexible()],
          ),
          Row(
            children: [buildExpanded(), buildExpanded()],
          ),
          Row(
            children: [buildFlexible(), buildFlexible()],
          ),
          Row(
            children: [buildFlexible(), buildExpanded()],
          )
        ],
      ),
    );
  }

  Widget buildFlexible() {
    return Flexible(
        child: Container(
      color: Colors.green,
      child: Text("generalzzd Flexible"),
    ));
  }

  Widget buildExpanded() {
    return Expanded(
        child: Container(
      color: Colors.green,
      child: Text("generalzzd Expanded"),
    ));
  }
}
