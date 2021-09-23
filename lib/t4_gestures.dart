import "package:flutter/material.dart";

void main() => runApp(const MaterialApp(
        home: Scaffold(
      body: Center(
        child: ZButton(),
      ),
    )));

class ZButton extends StatelessWidget {
  const ZButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => print("HAHA Button"),
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]),
        child: const Center(child: Text('Zengage')),
      ));
}
