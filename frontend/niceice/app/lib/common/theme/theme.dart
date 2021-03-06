// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

export 'package:app/common/theme/cut_corners_border.dart';
export 'package:app/common/theme/login_logo.dart';
export 'package:app/common/theme/adaptive.dart';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cut_corners_border.dart';

const defaultLetterSpacing = 0.03;
const mediumLetterSpacing = 0.04;
const largeLetterSpacing = 1.0;
const primaryColor = Colors.teal;
const Color errorRed = Color(0xFFC5032B);
const Color surfaceWhite = Color(0xFFFFFBFA);
const Color backgroundWhite = Colors.white;

final ThemeData appTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: primaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(
        borderSide: BorderSide(color: primaryColor, width: 0.5),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
    ),
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
    colorScheme: _colorScheme,
    accentColor: primaryColor,
    buttonColor: primaryColor,
    scaffoldBackgroundColor: backgroundWhite,
    cardColor: backgroundWhite,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: primaryColor,
      cursorColor: primaryColor
    ),
    errorColor: errorRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _colorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: primaryColor);
}

TextTheme _buildTextTheme(TextTheme base) {
  return GoogleFonts.rubikTextTheme(base
      .copyWith(
        headline5: base.headline5.copyWith(
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headline6.copyWith(
          fontSize: 18,
        ),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        bodyText1: base.bodyText1.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        bodyText2: base.bodyText2.copyWith(),
        subtitle1: base.subtitle1.copyWith(),
        headline4: base.headline4.copyWith(),
        button: base.button.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      )
      .apply(
        // displayColor: primaryColor,
        // bodyColor: primaryColor,
      ));
}

const ColorScheme _colorScheme = ColorScheme(
  primary: primaryColor,
  primaryVariant: primaryColor,
  secondary: primaryColor,
  secondaryVariant: primaryColor,
  surface: surfaceWhite,
  background: backgroundWhite,
  error: errorRed,
  onPrimary: primaryColor,
  onSecondary: primaryColor,
  onSurface: primaryColor,
  onBackground: primaryColor,
  onError: surfaceWhite,
  brightness: Brightness.light,
);
