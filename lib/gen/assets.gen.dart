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

class Assets {
  Assets._();

  static const SvgGenImage cafeSvg = SvgGenImage('assets/cafe.svg');
  static const String cafeWav = 'assets/cafe.wav';
  static const AssetGenImage favicon = AssetGenImage('assets/favicon.png');
  static const String lightRain = 'assets/light-rain.wav';
  static const String meditationMp3 = 'assets/meditation.mp3';
  static const SvgGenImage meditationSvg = SvgGenImage('assets/meditation.svg');
  static const SvgGenImage mistSvg = SvgGenImage('assets/mist.svg');
  static const String mistWav = 'assets/mist.wav';
  static const SvgGenImage nightSvg = SvgGenImage('assets/night.svg');
  static const String nightWav = 'assets/night.wav';
  static const String pianoMp3 = 'assets/piano.mp3';
  static const SvgGenImage pianoSvg = SvgGenImage('assets/piano.svg');
  static const SvgGenImage rain = SvgGenImage('assets/rain.svg');
  static const SvgGenImage smokeSvg = SvgGenImage('assets/smoke.svg');
  static const String smokeWav = 'assets/smoke.wav';
  static const SvgGenImage sunnySvg = SvgGenImage('assets/sunny.svg');
  static const String sunnyWav = 'assets/sunny.wav';
  static const SvgGenImage thunderstormSvg =
      SvgGenImage('assets/thunderstorm.svg');
  static const String thunderstormWav = 'assets/thunderstorm.wav';
  static const SvgGenImage windSvg = SvgGenImage('assets/wind.svg');
  static const String windWav = 'assets/wind.wav';

  /// List of all assets
  List<dynamic> get values => [
        cafeSvg,
        cafeWav,
        favicon,
        lightRain,
        meditationMp3,
        meditationSvg,
        mistSvg,
        mistWav,
        nightSvg,
        nightWav,
        pianoMp3,
        pianoSvg,
        rain,
        smokeSvg,
        smokeWav,
        sunnySvg,
        sunnyWav,
        thunderstormSvg,
        thunderstormWav,
        windSvg,
        windWav
      ];
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
