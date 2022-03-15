import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/widgets/design_system/app_text_form_field_material_custom_icon.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HeaderTabletWidget extends StatelessWidget {
  const HeaderTabletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: kPaddingHeaderApp.copyWith(left: 0, right: 0),
          child: Row(
            children: [
              kSpaceWidth2,
              Assets.icons.icBurgermenu.svg(width: 24, height: 24),
              kSpaceWidth2,
              Expanded(
                child: AppTextFormFieldMaterialCustomIcon(
                  hintText: "Search",
                  trailingIcon: Assets.icons.icSearch.svg(width: 24, height: 24),
                ),
              ),
              const Spacer(),
              Assets.icons.icRoundNotifications.svg(width: 24, height: 24),
              kSpaceWidth3,
              Assets.icons.icChatLeftDotsFill.svg(width: 24, height: 24),
              kSpaceWidth3,
              CircleAvatar(
                backgroundImage: AssetImage(Assets.images.imgAvatar.path),
              ),
              kSpaceWidthDefault,
              Assets.icons.icDropdown.svg(width: 24, height: 24),
              kSpaceWidth3
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