import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerTablet extends StatelessWidget {
  const DrawerTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DrawerHeader(child: Center(child: Text("WeHR",
          style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.black87),),),),
        Padding(
          padding: kPaddingAll12,
          child: Text("MAIN MENU", style: Theme.of(context).textTheme.caption,),
        ),
        _buildContent(Assets.icons.icDashboard.svg(width: 24, height: 24,)),
        _buildContent(Assets.icons.icRecruitment.svg(width: 24, height: 24,)),
        _buildContent(Assets.icons.icCalendar.svg(width: 24, height: 24,),),
        _buildContent(Assets.icons.icEmployee.svg(width: 24, height: 24,),),
        _buildContent( Assets.icons.icDepartment.svg(width: 24, height: 24),),
        kSpaceHeight3,
        Padding(
          padding: kPaddingAll12,
          child: Text("OTHER", style: Theme.of(context).textTheme.caption,),
        ),
        _buildContent(Assets.icons.icSupport.svg( width: 24, height: 24,)),
        _buildContent(Assets.icons.icSettings.svg(width: 24, height: 24,)),
      ],
    );
  }
  Widget _buildContent(Widget widget){
    return InkWell(
      onTap: (){

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: kPaddingAll12,
            child: widget,
          ),
        ],
      ),
    );
  }
}