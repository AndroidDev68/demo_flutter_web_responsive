import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OpenCalendarWidget extends StatelessWidget {
  const OpenCalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: colorGrayE0),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Text("Today, 13 Step, 2021", style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.black54),),
          kSpaceWidth0,
          Assets.icons.icDropdown.svg(width: 12, height: 24)
        ],
      ),
    );
  }
}