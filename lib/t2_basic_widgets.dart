import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      title: 'Generalzzd Basic Widgets', home: SafeArea(child: ZScaffold())));
}

class ZScaffold extends StatelessWidget {
  const ZScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          ZAppBar(
              title: Text('Generalzzd AppBar',
                  style: Theme.of(context).primaryTextTheme.headline6)),
          const Expanded(child: Center(child: Text('Generalzzd Helloworld')))
        ],
      ),
    );
  }
}

class ZAppBar extends StatelessWidget {
  const ZAppBar({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(children: [
        IconButton(
            onPressed: () {
              print('Icon 1 tapped');
            },
            tooltip: 'Navigation menu',
            icon: const Icon(Icons.menu)),
        Expanded(child: title),
        IconButton(
            onPressed: () {
              print('Icon 2 tapped');
            },
            icon: const Icon(Icons.search),
            tooltip: 'Search')
      ]));

  final Widget title;
}
