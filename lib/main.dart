import 'package:flutter/material.dart';
import 'package:flutter_begaining_assignment/navBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignent',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: navBar(),
    );
  }
}
