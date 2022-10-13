import 'package:cleanarch/app/core/styles/colors_app.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyles? _instance;
  // Avoid self isntance
  ButtonStyles._();
  static ButtonStyles get instance {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton =>
      ElevatedButton.styleFrom(backgroundColor: ColorsApp.instance.primary);
}

extension ButtonStylesExtensions
    on ExtendSelectionToNextWordBoundaryOrCaretLocationIntent {
  ButtonStyles get buttonStyles => ButtonStyles.instance;
}
