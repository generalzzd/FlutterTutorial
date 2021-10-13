import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'Generalzzd SingleChildScrollView Demo',
    home: ZSingleChildScrollView()));

class ZSingleChildScrollView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ZSingleChildScrollViewState();
}

class ZSingleChildScrollViewState extends State<ZSingleChildScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                child: Text(
                    "The widget that is to grow to fit the remaining space so provided is wrapped in an Expanded widget. This technique is quite expensive, as it more or less requires that the contents of the viewport be laid out twice (once to find their intrinsic dimensions, and once to actually lay them out). The number of widgets within the column should therefore be kept small. Alternatively, subsets of the children that have known dimensions can be wrapped in a SizedBox that has tight vertical constraints, so that the intrinsic sizing algorithm can short-circuit the computation when it reaches those parts of the subtree.")),
          ),
        ],
      ),
    );
  }
}
