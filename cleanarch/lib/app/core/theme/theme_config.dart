import 'package:flutter/material.dart';

import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(color: Colors.grey[400]!)); // Outline

  static final theme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black)),
      primaryColor: ColorsApp.instance.primary,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorsApp.instance.primary,
        primary: ColorsApp.instance.primary,
        // secondary: ColorsApp.instance.secondary,
      ), //
      elevatedButtonTheme: const ElevatedButtonThemeData(
          //style:
          //AppStyles.i.primaryButton
          ),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          contentPadding: const EdgeInsets.all(13),
          border: _defaultInputBorder,
          enabledBorder: _defaultInputBorder,
          focusedBorder: _defaultInputBorder,
          labelStyle:
              TextStyles.instance.textButtonLabel.copyWith(color: Colors.black),
          errorStyle: TextStyles.instance.textButtonLabel
              .copyWith(color: Colors.red)) // InputDecorationTheme
      );
}
