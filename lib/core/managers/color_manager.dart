import 'dart:math';

import 'package:flutter/material.dart';

/// Class responsible for random color generation
class ColorManager {
  final Random _random = Random();

  static const int _rgbMaxValue = 256;

  int _getRandValue() {
    return _random.nextInt(_rgbMaxValue);
  }

  /// Method that returns random color
  Color getRandomColor() {
    return Color.fromRGBO(
      _getRandValue(),
      _getRandValue(),
      _getRandValue(),
      1,
    );
  }

  /// Determines color for text based on background
  Color getTextColorFromBackground(Color backgroundColor) {
    if (ThemeData.estimateBrightnessForColor(backgroundColor) ==
        Brightness.dark) {
      return Colors.white;
    }

    return Colors.black;
  }
}
