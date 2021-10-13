// import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';

// void main() => runApp(
//       DevicePreview(
//         enabled: !true,
//         builder: (context) => ZScreen(), // Wrap your app
//       ),
//     );

// class ZScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => ZScreenState();
// }

// class ZScreenState extends State<ZScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Row(
//             children: [buildExpanded(), buildFlexible()],
//           ),
//           Row(
//             children: [buildExpanded(), buildExpanded()],
//           ),
//           Row(
//             children: [buildFlexible(), buildFlexible()],
//           ),
//           Row(
//             children: [buildFlexible(), buildExpanded()],
//           )
//         ],
//       ),
//     );
//   }

//   Widget buildFlexible() {
//     return Flexible(
//         child: Container(
//       color: Colors.green,
//       child: Text("generalzzd Flexible"),
//     ));
//   }

//   Widget buildExpanded() {
//     return Expanded(
//         child: Container(
//       color: Colors.green,
//       child: Text("generalzzd Expanded"),
//     ));
//   }
// }
