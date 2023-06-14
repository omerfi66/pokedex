import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._();

  static double getAppTitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
  }

  static final Map<String, Color> _typeColorMap = {
    "Grass": Colors.green,
    "Fire": Colors.redAccent,
    "Water": Colors.blue,
    "Bug": Colors.yellow,
    "Normal": Colors.grey,
    "Fighting": Colors.red,
    "Flying": Colors.blue,
    "Poison": Colors.red,
    "Ground": Colors.blue,
    "Rock": Colors.green,
    "Ghost": Colors.blue,
    "Steel": Colors.blue,
    "Psychic": Colors.red,
    "Ice": Colors.blue,
    "Dragon": Colors.blue,
    "Dark": Colors.blue,
    "Fairy": Colors.red,
    "Unknown": Colors.grey,
  };
  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }

  static EdgeInsets getDefaultPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(8.w);
    }
  }
  static EdgeInsets getIconPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(10.h);
    } else {
      return EdgeInsets.all(4.w);
    }
  }

  static double calculatePokeImageAndBallSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2.sw;
    } else {
      return 0.3.sh;
    }
  }
}
