
import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';
  int index = 0;

  HomePage({required this.index});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TAG = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SafeArea(
        child: Container(
          child: Text("Homepage"),
        ),
      )
    );
  }
}