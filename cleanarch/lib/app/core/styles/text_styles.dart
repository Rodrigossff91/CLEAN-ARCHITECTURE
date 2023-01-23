import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self isntance
  TextStyles._();
  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'Poppins';

  TextStyle get textPrimaryFontRegular =>
      TextStyle(fontFamily: font, fontWeight: FontWeight.normal);

  TextStyle get textButtonLabel =>
      textPrimaryFontRegular.copyWith(fontSize: 14);
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
