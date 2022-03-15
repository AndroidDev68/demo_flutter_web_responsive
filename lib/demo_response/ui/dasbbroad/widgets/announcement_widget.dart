
import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/data/models/announcement_dto.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'item_announcement_desktop_widget.dart';
import 'open_calendar_widget.dart';

class AnnouncementWidget extends StatefulWidget {
  const AnnouncementWidget({Key? key}) : super(key: key);

  @override
  _AnnouncementWidgetState createState() => _AnnouncementWidgetState();
}

class _AnnouncementWidgetState extends State<AnnouncementWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingAll12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: colorGrayE0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text("Announcement", style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w700),),
              const Spacer(),
              const OpenCalendarWidget(),
            ],
          ),
          kSpaceHeightDefault,
          ItemAnnouncementDesktopWidget(
              announcementDto: AnnouncementDto(id: 1, title: "Outing schedule for every department", time: "5 Minutes ago"),),

          kSpaceHeightDefault,
          ItemAnnouncementDesktopWidget(
            announcementDto: AnnouncementDto(id: 2, title: "Meeting HR Department", time: "Yesterday, 12:30 PM"),),

          kSpaceHeightDefault,
          ItemAnnouncementDesktopWidget(
            announcementDto: AnnouncementDto(id: 3, title: "IT Department need two more talents for UX/UI Designer position", time: "Yesterday, 09:15 AM"),),
          const Divider(
            color: colorGrayFA,
            height: 1,
          ),

          const Divider(
            thickness: 1,
            color: colorGrayFA,
          ),

          TextButton(
            onPressed: (){},
            child: Text(
              "See All Announcement",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.button?.copyWith(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}