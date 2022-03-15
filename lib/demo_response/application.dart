import 'dart:developer' as developer;
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/dashboard.dart';
import 'package:demo_rx_dart/demo_response/ui/root_page/root_page.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}