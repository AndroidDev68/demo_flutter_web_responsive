/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  SvgGenImage get icBurgermenu =>
      const SvgGenImage('assets/icons/ic_burgermenu.svg');
  SvgGenImage get icCalendar =>
      const SvgGenImage('assets/icons/ic_calendar.svg');
  SvgGenImage get icChatLeftDotsFill =>
      const SvgGenImage('assets/icons/ic_chat_left_dots_fill.svg');
  SvgGenImage get icDashboard =>
      const SvgGenImage('assets/icons/ic_dashboard.svg');
  SvgGenImage get icDepartment =>
      const SvgGenImage('assets/icons/ic_department.svg');
  SvgGenImage get icDropdown =>
      const SvgGenImage('assets/icons/ic_dropdown.svg');
  SvgGenImage get icEmployee =>
      const SvgGenImage('assets/icons/ic_employee.svg');
  SvgGenImage get icEye => const SvgGenImage('assets/icons/ic_eye.svg');
  SvgGenImage get icHidePassword =>
      const SvgGenImage('assets/icons/ic_hide_password.svg');
  SvgGenImage get icHorizontalMore =>
      const SvgGenImage('assets/icons/ic_horizontal_more.svg');
  SvgGenImage get icPin => const SvgGenImage('assets/icons/ic_pin.svg');
  SvgGenImage get icRecruitment =>
      const SvgGenImage('assets/icons/ic_recruitment.svg');
  SvgGenImage get icRoundNotifications =>
      const SvgGenImage('assets/icons/ic_round-notifications.svg');
  SvgGenImage get icSearch => const SvgGenImage('assets/icons/ic_search.svg');
  SvgGenImage get icSettings =>
      const SvgGenImage('assets/icons/ic_settings.svg');
  SvgGenImage get icSupport => const SvgGenImage('assets/icons/ic_support.svg');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get imgAvatar =>
      const AssetGenImage('assets/images/img_avatar.jpeg');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
    );
  }

  String get path => _assetName;
}
