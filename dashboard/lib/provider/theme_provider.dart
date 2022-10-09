import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: darkBgColor,
    colorScheme: ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    // scaffoldBackgroundColor: lightBgColor,
    colorScheme: ColorScheme.light(),
  );
}
