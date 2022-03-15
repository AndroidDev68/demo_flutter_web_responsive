import 'package:demo_rx_dart/constants.dart';
import 'package:flutter/material.dart';

class DashboardHeaderWidget extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      padding: kPaddingAllSymmetric12_24,
      child: Text("Dashboard", style: Theme.of(context).textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w700),),
    );
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}