import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentHeight(double percent) => screenWidth * percent;
  double percentWidth(double percent) => screenWidth * percent;
}
