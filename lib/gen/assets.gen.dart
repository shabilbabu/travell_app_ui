/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/building icon blue.png
  AssetGenImage get buildingIconBlue =>
      const AssetGenImage('assets/icons/building icon blue.png');

  /// File path: assets/icons/building icon white.png
  AssetGenImage get buildingIconWhite =>
      const AssetGenImage('assets/icons/building icon white.png');

  /// File path: assets/icons/bus icon blue.png
  AssetGenImage get busIconBlue =>
      const AssetGenImage('assets/icons/bus icon blue.png');

  /// File path: assets/icons/bus icon white.png
  AssetGenImage get busIconWhite =>
      const AssetGenImage('assets/icons/bus icon white.png');

  /// File path: assets/icons/email_icon.png
  AssetGenImage get emailIcon =>
      const AssetGenImage('assets/icons/email_icon.png');

  /// File path: assets/icons/food icon blue.png
  AssetGenImage get foodIconBlue =>
      const AssetGenImage('assets/icons/food icon blue.png');

  /// File path: assets/icons/food icon white.png
  AssetGenImage get foodIconWhite =>
      const AssetGenImage('assets/icons/food icon white.png');

  /// File path: assets/icons/password_icon.png
  AssetGenImage get passwordIcon =>
      const AssetGenImage('assets/icons/password_icon.png');

  /// File path: assets/icons/phone_icon.png
  AssetGenImage get phoneIcon =>
      const AssetGenImage('assets/icons/phone_icon.png');

  /// File path: assets/icons/plane icon blue.png
  AssetGenImage get planeIconBlue =>
      const AssetGenImage('assets/icons/plane icon blue.png');

  /// File path: assets/icons/plane icon white.png
  AssetGenImage get planeIconWhite =>
      const AssetGenImage('assets/icons/plane icon white.png');

  /// File path: assets/icons/search_icon .png
  AssetGenImage get searchIcon =>
      const AssetGenImage('assets/icons/search_icon .png');

  /// File path: assets/icons/user_icon.png
  AssetGenImage get userIcon =>
      const AssetGenImage('assets/icons/user_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        buildingIconBlue,
        buildingIconWhite,
        busIconBlue,
        busIconWhite,
        emailIcon,
        foodIconBlue,
        foodIconWhite,
        passwordIcon,
        phoneIcon,
        planeIconBlue,
        planeIconWhite,
        searchIcon,
        userIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app logo blue.png
  AssetGenImage get appLogoBlue =>
      const AssetGenImage('assets/images/app logo blue.png');

  /// File path: assets/images/app logo white.png
  AssetGenImage get appLogoWhite =>
      const AssetGenImage('assets/images/app logo white.png');

  /// File path: assets/images/hyde park london.jpg
  AssetGenImage get hydeParkLondon =>
      const AssetGenImage('assets/images/hyde park london.jpg');

  /// File path: assets/images/keral house boat.jpg
  AssetGenImage get keralHouseBoat =>
      const AssetGenImage('assets/images/keral house boat.jpg');

  /// File path: assets/images/london bridge.jpg
  AssetGenImage get londonBridge =>
      const AssetGenImage('assets/images/london bridge.jpg');

  /// File path: assets/images/malidweep.jpg
  AssetGenImage get malidweep =>
      const AssetGenImage('assets/images/malidweep.jpg');

  /// File path: assets/images/offer img one.jpg
  AssetGenImage get offerImgOne =>
      const AssetGenImage('assets/images/offer img one.jpg');

  /// File path: assets/images/offer img three.jpg
  AssetGenImage get offerImgThree =>
      const AssetGenImage('assets/images/offer img three.jpg');

  /// File path: assets/images/offer img two.jpg
  AssetGenImage get offerImgTwo =>
      const AssetGenImage('assets/images/offer img two.jpg');

  /// File path: assets/images/travel girl bg image.jpg
  AssetGenImage get travelGirlBgImage =>
      const AssetGenImage('assets/images/travel girl bg image.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        appLogoBlue,
        appLogoWhite,
        hydeParkLondon,
        keralHouseBoat,
        londonBridge,
        malidweep,
        offerImgOne,
        offerImgThree,
        offerImgTwo,
        travelGirlBgImage
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/facebook_icon.svg
  SvgGenImage get facebookIcon =>
      const SvgGenImage('assets/svg/facebook_icon.svg');

  /// File path: assets/svg/google_icon.svg
  SvgGenImage get googleIcon => const SvgGenImage('assets/svg/google_icon.svg');

  /// List of all assets
  List<SvgGenImage> get values => [facebookIcon, googleIcon];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
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
    bool cacheColorFilter = false,
    SvgTheme? theme,
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
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
