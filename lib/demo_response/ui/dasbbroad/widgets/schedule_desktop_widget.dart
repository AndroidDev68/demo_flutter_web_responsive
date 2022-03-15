import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/data/models/schedule_dto.dart';
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/widgets/open_calendar_widget.dart';
import 'package:flutter/material.dart';

import 'item_schedule_widget.dart';

class ScheduleDesktopWidget extends StatelessWidget {
  const ScheduleDesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingAllSymmetric16_12,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: colorGrayE0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Upcoming Schedule",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w700),),
              const Spacer(),
              const OpenCalendarWidget()
            ],
          ),
          kSpaceHeight3,
          Text("Property", textAlign: TextAlign.start, style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.grey, fontSize: 10),),
          kSpaceHeightDefault,
          ItemScheduleWidget(scheduleDto: ScheduleDto(id: 1, title: "Review candidate applications", time: "Today - 11.30 AM"),),
          kSpaceHeight3,
          Text("Other", textAlign: TextAlign.start, style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.grey, fontSize: 10),),
          kSpaceHeightDefault,
          ItemScheduleWidget(scheduleDto: ScheduleDto(id: 2, title: "Interview with candidates", time: "Today - 10.30 AM"),),
          kSpaceHeightDefault,
          ItemScheduleWidget(scheduleDto: ScheduleDto(id: 3, title: "Short meeting with product designer from IT Department", time: "Today - 9.30 AM"),),
          kSpaceHeightDefault,
          ItemScheduleWidget(scheduleDto: ScheduleDto(id: 4, title: "Short meeting with product designer from IT Department", time: "Today - 8.30 AM"),),
          const Divider(
            thickness: 1,
            color: colorGrayFA,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              TextButton(
                onPressed: (){},
                child: Text("Create a New Schedule",
                style: Theme.of(context).textTheme.button?.copyWith(color: Colors.red),),),
            ],
          )
        ],
      ),
    );
  }
}