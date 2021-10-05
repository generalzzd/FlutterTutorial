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
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisCount: 3,
      crossAxisSpacing: 25,
      mainAxisSpacing: 20,
      children: <Widget>[
        FittedBox(
            child: Column(
          children: [
            Image.asset(
              'images/test.jpeg',
              height: 180,
              width: 80,
              fit: BoxFit.scaleDown,
            ),
            Text('test text')
          ],
        ))
      ],
    );
  }
}
