import 'package:flutter/material.dart';

void main() => runApp(
    const MaterialApp(title: 'Generalzzd Navigator Demo', home: ZNavigator()));

class ZNavigator extends StatelessWidget {
  const ZNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            leading: const IconButton(
                onPressed: null,
                icon: Icon(Icons.menu),
                tooltip: 'ZNavigator Menu'),
            title: const Text('ZNavigator Title'),
            actions: const [
              IconButton(
                  onPressed: null, icon: Icon(Icons.search), tooltip: 'ZSearch')
            ]),
        body: const Center(child: Text('ZNavigator Hello world')),
        floatingActionButton: const FloatingActionButton(
            tooltip: 'ZAdd', child: Icon(Icons.add), onPressed: null),
      );
}
