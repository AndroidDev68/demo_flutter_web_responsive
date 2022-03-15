import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/responsive.dart';
import 'package:demo_rx_dart/demo_response/widgets/drawer/drawer_desktop_mobile.dart';
import 'package:demo_rx_dart/demo_response/widgets/drawer/drawer_tablet.dart';
import 'package:flutter/material.dart';

class DrawerLeft extends StatefulWidget {
  const DrawerLeft({Key? key}) : super(key: key);

  @override
  _DrawerLeftState createState() => _DrawerLeftState();
}

class _DrawerLeftState extends State<DrawerLeft> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: colorBgDrawer,
      child: Responsive.isTablet(context) ? const DrawerTablet() : const DrawerDesktopMobile(),
    );
  }
}