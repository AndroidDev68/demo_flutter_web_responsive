import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/data/models/schedule_dto.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ItemScheduleWidget extends StatelessWidget {
  const ItemScheduleWidget({Key? key, required this.scheduleDto}) : super(key: key);
  final ScheduleDto scheduleDto;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingAll12,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(color: colorGrayE0),
        color: colorGrayFA
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(scheduleDto.title,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText1,),
                kSpaceHeightDefault,
                Text(scheduleDto.time,
                  style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.grey, fontSize: 10),)
              ],
            ),
          ),
          Assets.icons.icChatLeftDotsFill.svg(width: 24, height: 24)
        ],
      ),
    );
  }
}