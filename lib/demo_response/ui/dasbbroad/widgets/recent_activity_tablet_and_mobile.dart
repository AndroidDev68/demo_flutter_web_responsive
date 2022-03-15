import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/data/models/recent_activity_dto.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecentActivityTabletAndMobile extends StatelessWidget {
  const RecentActivityTabletAndMobile({Key? key, required this.recentActivityDto}) : super(key: key);
  final RecentActivityDto recentActivityDto;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xff1B204A),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: colorRecentActivity,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),)
            ),
            padding: kPaddingAll12,
            alignment: Alignment.centerLeft,
            child: Text("Recent Activity",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: kPaddingAll12,
            child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DateFormat("h:mm a dd-MM-yyyy").format(recentActivityDto.time),
                  style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w400),),
                kSpaceHeight1,
                Text(recentActivityDto.title,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),),
                kSpaceHeight2,
                Text(recentActivityDto.description,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white, fontWeight: FontWeight.w300),),
                kSpaceHeight3,
                Text(
                  recentActivityDto.todayActivityDescription,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white),
                ),
                kSpaceHeight2,
                ElevatedButton(onPressed: (){

                }, child: const Text("See All Activity"),)
              ],
            ),
          )
        ],
      ),
    );
  }
}