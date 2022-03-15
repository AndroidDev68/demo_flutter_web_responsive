
import 'dart:developer' as developer;
import 'package:demo_rx_dart/demo_response/responsive.dart';
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/dashboard.dart';
import 'package:demo_rx_dart/demo_response/ui/main_page/main_page.dart';
import 'package:demo_rx_dart/demo_response/widgets/drawer/drawer_left.dart';
import 'package:flutter/material.dart';

final mainScaffoldKey = GlobalKey<ScaffoldState>();

class RootPage extends StatefulWidget {
  static const routeName = 'RootPage';

  const RootPage({Key? key}) : super(key: key);
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  static const TAG = 'RootPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainScaffoldKey,
      drawer: const DrawerLeft(),
      body: SafeArea(
        child: Row(
          children: [
            if(!Responsive.isMobile(context))
              const Expanded(
                flex: 1,
                child: DrawerLeft(),
              ),
            const Expanded(
              flex: 5,
              child: MainPage(),
            )
          ],
        ),
      )
    );
  }
}