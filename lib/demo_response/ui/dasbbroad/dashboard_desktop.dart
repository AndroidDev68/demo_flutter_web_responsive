
import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/data/models/cart_chart_dto.dart';
import 'package:demo_rx_dart/demo_response/data/models/cart_dto.dart';
import 'package:demo_rx_dart/demo_response/data/models/recent_activity_dto.dart';
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/widgets/announcement_widget.dart';
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/widgets/recent_activity_desktop_widget.dart';
import 'package:demo_rx_dart/demo_response/ui/dasbbroad/widgets/schedule_desktop_widget.dart';
import 'package:demo_rx_dart/demo_response/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/cart_information_widget.dart';
import 'widgets/cart_with_chart_information_widget.dart';

class DashboardDesktop extends StatefulWidget {
  static const routeName = 'DashboardDesktop';

  const DashboardDesktop({Key? key}) : super(key: key);
  @override
  _DashboardDesktopState createState() => _DashboardDesktopState();
}

class _DashboardDesktopState extends State<DashboardDesktop> {
  static const TAG = 'DashboardDesktop';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: kPaddingAllSymmetric12_24,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CartInformationWidget(
                          cartDto: CartDto(id: 1, color: const Color(0xffFFEFE7), count: 24, title: "Available Position",
                              description: "4 Urgently needed", descriptionColor: const Color(0xffFF5151)),),
                      ),
                      kSpaceWidth1,
                      Expanded(
                        child: CartInformationWidget(cartDto: CartDto(id: 2, color: const Color(0xffE8F0FB), count: 10,
                            title: "Job Open",description: "4 Active hiring",descriptionColor: const Color(0xff3786F1)),),
                      ),
                      kSpaceWidth1,
                      Expanded(
                        child: CartInformationWidget(cartDto: CartDto(id: 3, color: const Color(0xffFDEBF9), count: 24,
                            title: "New Employees",description: "4 Department",descriptionColor: const Color(0xffEE61CF)),),
                      ),
                      kSpaceWidth1
                    ],
                  ),
                  kSpaceHeight2,
                  Row(
                    children: [
                      Expanded(child: CartWithChartInformationWidget(
                        cartChartDto: CartChartDto(id: 1, title: "Total Employees", count: 216, men: 120, women: 96, percent: 2, description: "Past month"),),),
                      kSpaceWidth1,
                      Expanded(child: CartWithChartInformationWidget(
                        cartChartDto: CartChartDto(id: 2, title: "Total Request", count: 16, men: 6, women: 10, percent: 5, description: "Past month"),),),
                      kSpaceWidth1,
                    ],
                  ),
                  kSpaceHeight2,
                  Row(
                    children: const [
                      Expanded(child: AnnouncementWidget()),
                      kSpaceWidth1,
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RecentActivityDesktopWidget(
                    recentActivityDto: RecentActivityDto(
                        id: 1,
                        time: DateTime.now(),
                        title: "You Posted a New Job",
                        description: "Kindly check the requirements and terms of work and make sure everything is right.",
                        todayActivityDescription: "Today you makes 12 Activity"),
                  ),
                  kSpaceHeight2,
                  const ScheduleDesktopWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}