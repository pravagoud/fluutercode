import 'package:flutter/material.dart';
import 'package:udameypractice/Homepage.dart';
import 'package:udameypractice/Images.dart';

void main() {
  runApp(MyApp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "home": (context) => MyApp(),
        "image": (context) => ImageDemo(),
      },
    );
  }
}
