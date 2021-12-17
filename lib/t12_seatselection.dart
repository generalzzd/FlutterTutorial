import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'Generalzzd SingleChildScrollView Demo', home: MySeat()));

class MySeat extends StatefulWidget {
  const MySeat({Key? key}) : super(key: key);

  @override
  _MySeatState createState() => _MySeatState();
}

class _MySeatState extends State<MySeat> {
  @override
  Widget build(BuildContext context) {
    var uis = InteractiveViewer(
      constrained: false,
      scaleEnabled: true,
      boundaryMargin: const EdgeInsets.all(20.0),
      maxScale: 2.0,
      minScale: 1.0,
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyan,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.cyan,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: uis,
      ),
      floatingActionButton: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          print("aaaa");
        },
      ),
    );
  }
}
