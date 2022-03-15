import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/ui/root_page/root_page.dart';
import 'package:demo_rx_dart/demo_response/widgets/design_system/app_text_field_custom_header_icon.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HeaderMobileWidget extends StatelessWidget {
  const HeaderMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: kPaddingHeaderApp.copyWith(right: 0, left: 0, top: 8, bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kSpaceWidth2,
              InkResponse(
                onTap: (){
                  mainScaffoldKey.currentState?.openDrawer();
                },
                child: Assets.icons.icBurgermenu.svg(width: 24, height: 24),
              ),
              kSpaceWidth1,
              const Expanded(child: AppTextFieldCustomHeaderIcon(),),
              kSpaceWidthDefault,
              Assets.icons.icRoundNotifications.svg(width: 24, height: 24),
              kSpaceWidth2,
              Assets.icons.icChatLeftDotsFill.svg(width: 24, height: 24),
              kSpaceWidth2,
              CircleAvatar(
                backgroundImage: AssetImage(Assets.images.imgAvatar.path),
              ),
              kSpaceWidthDefault,
              Assets.icons.icDropdown.svg(width: 24, height: 24),
              kSpaceWidth2
            ],
          ),
        ),
        const Divider(
          color: colorGrayE0,
          height: 1,
        )
      ],
    );
  }
}