import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: null,
      body: Center(
        child: Image.network('http://localhost:8080/hi'),
      ),
    ),
  ));
}
