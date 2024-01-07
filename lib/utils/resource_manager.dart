import 'dart:async';

import 'package:ecotivy/di/get_it.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:jovial_svg/jovial_svg.dart';

class Resource {
  static const appIcon = 'app_icon';
  static const kmIcon = 'km_icon';
  static const upiIcon = 'upi_icon';
  static const playTimeIcon = 'play_time_icon';
  static const meetingIcon = 'meeting_icon';
  static const conversationIcon = 'conversation_icon';
  static const congratsIcon = 'congrats_icon';

  static List<String> preLoadResources = [
    appIcon,
    kmIcon,
    upiIcon,

  ];
}

abstract class ResourceManger<T> {
  T getAssetWidget(String assetName);
}

class SVGResourceManager implements ResourceManger<ScalableImage> {
   final Map<String,ScalableImage> assets;

  SVGResourceManager(this.assets);

  @override
  getAssetWidget(String assetName) {
    return assets[assetName]!;
  }


   static Future<SVGResourceManager> preLoadResources() async {
    final assetsFile = <String,ScalableImage>{};
    for (var file in Resource.preLoadResources) {
      final sourcePath = 'assets/images/si/$file.si';
      await rootBundle.load(sourcePath);
      ScalableImage preloadImage = await
      ScalableImage.fromSIAsset(rootBundle, sourcePath, compact: true);
      await preloadImage.prepareImages();
      assetsFile[file]= preloadImage;
    }
    return SVGResourceManager(assetsFile);
  }
}


class PNGResourceManager implements ResourceManger<AssetImage> {
  final Map<String,AssetImage>? assets;

  PNGResourceManager({this.assets});

  @override
  getAssetWidget(String assetName) {
    return AssetImage('assets/images/png/$assetName.png');
  }

  preLoadResources(context) async {
    for (var file in Resource.preLoadResources) {
      final sourcePath = 'assets/images/png/$file.png';
      await rootBundle.load(sourcePath);

      AssetImage preloadImage = AssetImage(sourcePath, bundle: rootBundle);
      precacheImage(preloadImage, context);
    }

  }
}

