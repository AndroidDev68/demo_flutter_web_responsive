
import 'dart:developer' as developer;
import 'package:demo_rx_dart/demo_response/responsive.dart';
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/dashboard_desktop.dart';
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/dashboard_mobile.dart';
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/dashboard_tablet.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static const routeName = 'Dashboard';

  const Dashboard({Key? key}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isTablet(context) ? const DashboardTablet()
        : Responsive.isMobile(context) ? const DashboardMobile()
        : const DashboardDesktop();
  }
}