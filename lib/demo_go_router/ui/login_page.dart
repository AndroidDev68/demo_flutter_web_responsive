
import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const TAG = 'LoginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SafeArea(
        child: Container(
          child: Text("Login page"),
        ),
      )
    );
  }
}