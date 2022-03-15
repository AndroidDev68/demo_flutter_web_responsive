
import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/dashboard.dart';
import 'package:demo_rx_dart/demo_response/widgets/header/dashboard_header_widget.dart';
import 'package:demo_rx_dart/demo_response/widgets/header/header_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static const routeName = 'MainPage';

  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const TAG = 'MainPage';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScroll){
          return [
            SliverPersistentHeader(
              delegate: HeaderWidget(),
              pinned: false,
              floating: true,
            ),
            SliverPersistentHeader(
              delegate: DashboardHeaderWidget(),
              pinned: true,
              floating: true,
            ),
          ];
        },
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
               Expanded(child: Dashboard())
            ],
          ),
      ),
    );
  }
}