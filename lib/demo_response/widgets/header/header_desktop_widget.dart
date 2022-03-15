import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/widgets/design_system/app_text_form_field_material_custom_icon.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HeaderDesktopWidget extends StatelessWidget {
  const HeaderDesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: kPaddingHeaderApp,
          child: Row(
            children: [
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
              Text("Nguyễn Thành", style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),),
              kSpaceWidthDefault,
              Assets.icons.icDropdown.svg(width: 24, height: 24)
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Divider(
            height: 1,
            color: colorGrayE0,
          ),
        )
      ],
    );
  }
}