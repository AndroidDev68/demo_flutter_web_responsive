import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/data/models/announcement_dto.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ItemAnnouncementDesktopWidget extends StatelessWidget {
  const ItemAnnouncementDesktopWidget({Key? key, required this.announcementDto}) : super(key: key);
  final AnnouncementDto announcementDto;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingDefault,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: colorGrayE0),
        color: colorGrayFA,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(announcementDto.title, style: Theme.of(context).textTheme.bodyText1, maxLines: 2,),
                kSpaceHeight0,
                Text(announcementDto.time, style: Theme.of(context).textTheme.caption,),
              ],
            ),
          ),
          Assets.icons.icPin.svg(width: 24, height: 24),
          kSpaceWidth2,
          Assets.icons.icHorizontalMore.svg(width: 24, height: 24)

        ],
      ),
    );
  }
}