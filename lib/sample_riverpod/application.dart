import 'package:demo_rx_dart/sample_riverpod/ui/home_page.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget{
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }

}