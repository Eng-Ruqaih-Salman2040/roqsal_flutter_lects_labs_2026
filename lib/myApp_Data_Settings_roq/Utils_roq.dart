import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';
class Utils {
  ///Method to get a random color
  static getRandomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);

  static List<Color> buttonGradient = [Colors.cyan.shade600, Colors.blue.shade600];

  //routes

  //fonts
  static const String ubuntuFont = "Ubuntu";
  static const String crimsonFont = "Crimson";
  static const String ubuntuRegularFont = "Ubuntu-Regular.ttf";
  static const String crimsonRegularFont = "CrimsonText-Regular.ttf";

//descriptions

}