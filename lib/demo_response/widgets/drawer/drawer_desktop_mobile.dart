import 'dart:developer' as developer;
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:demo_rx_dart/constants.dart';

class DrawerDesktopMobile extends StatelessWidget {
  const DrawerDesktopMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DrawerHeader(
          child: Center(
            child: Text(
              "WeHR",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black87),
            ),
          ),
        ),
        Padding(
          padding: kPaddingAllSymmetric12_16,
          child: Text("MAIN MENU", style: Theme.of(context).textTheme.caption),
        ),
        buildElement(context, Assets.icons.icDashboard.svg(width: 24, height: 24), "Dashboard"),
        buildElement(context, Assets.icons.icRecruitment.svg(width: 24, height: 24), "Recruitment"),
        buildElement(context, Assets.icons.icCalendar.svg(width: 24, height: 24), "Schedule"),
        buildElement(context, Assets.icons.icEmployee.svg(width: 24, height: 24), "Employee"),
        buildElement(context, Assets.icons.icDepartment.svg(width: 24, height: 24), "Department"),
        kSpaceHeight3,
        Padding(
          padding: kPaddingAllSymmetric12_16,
          child: Text("OTHER", style: Theme.of(context).textTheme.caption),
        ),
        buildElement(context, Assets.icons.icSupport.svg(width: 24, height: 24), "Support"),
        buildElement(context, Assets.icons.icSettings.svg(width: 24, height: 24), "Settings"),
      ],
    );
  }
  Widget buildElement(BuildContext context, SvgPicture picture, String name){
    return InkWell(
      onTap: (){

      },
      child: Padding(
        padding: kPaddingAllSymmetric12_16,
        child: Row(
          children: [
            picture,
            kSpaceWidth2,
            Text(name, style: Theme.of(context).textTheme.bodyText1,)
          ],
        ),
      ),
    );
  }
}