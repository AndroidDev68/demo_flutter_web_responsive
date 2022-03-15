//
// import 'dart:developer' as developer;
// import 'package:demo_rx_dart/demo_response/responsive.dart';
// import 'package:demo_rx_dart/demo_response/widgets/header/header_desktop_widget.dart';
// import 'package:demo_rx_dart/demo_response/widgets/header/header_mobile_widget.dart';
// import 'package:demo_rx_dart/demo_response/widgets/header/header_tablet_widget.dart';
// import 'package:flutter/material.dart';
//
// class HeaderWidget extends StatefulWidget {
//   const HeaderWidget({Key? key}) : super(key: key);
//
//   @override
//   _HeaderWidgetState createState() => _HeaderWidgetState();
// }
//
// class _HeaderWidgetState extends State<HeaderWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Responsive.isMobile(context) ? const HeaderMobileWidget()
//           : Responsive.isTablet(context) ? const HeaderTabletWidget()
//           : const HeaderDesktopWidget(),
//     );
//   }
// }

import 'package:demo_rx_dart/demo_response/responsive.dart';
import 'package:demo_rx_dart/demo_response/widgets/header/header_desktop_widget.dart';
import 'package:demo_rx_dart/demo_response/widgets/header/header_mobile_widget.dart';
import 'package:demo_rx_dart/demo_response/widgets/header/header_tablet_widget.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        child: Responsive.isMobile(context) ? const HeaderMobileWidget()
        : Responsive.isTablet(context) ? const HeaderTabletWidget()
        : const HeaderDesktopWidget(),
    );
  }

  @override
  double get maxExtent => 74;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}