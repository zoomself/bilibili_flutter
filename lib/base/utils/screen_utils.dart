import 'dart:ui';

import 'package:flutter/services.dart';

class ScreenUtils {
  ScreenUtils._();

  ///获取屏幕宽度
  static double getScreenWidth() {
    return window.physicalSize.width / window.devicePixelRatio;
  }
  ///获取屏幕高度
  static double getScreenHeight() {
    return window.physicalSize.height / window.devicePixelRatio;
  }

  ///强制横屏
  static forceLandscape(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
  }
  ///强制竖屏
  static forcePortrait(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
  }

  ///强制横屏/竖屏
  static forceLandscapeOrPortrait(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
  }
}
