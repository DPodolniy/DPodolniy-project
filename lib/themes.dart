import 'package:flutter/material.dart';

// final Color lightPrimaryColor = Color(0xFFCCD0CF);
final Color lightPrimaryColor = Color(0xFFF6F2EE);
// final Color lightAccentColor = Color(0xFF9BA8AB);

// final Color darkPrimaryColor = Color(0xFF11212D);
final Color darkPrimaryColor = Color(0xFF323841);
// final Color darkAccentColor = Color(0xFF4A5C6A);

final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: lightPrimaryColor,
    colorScheme: ColorScheme.light(
      primary: lightPrimaryColor,
      secondary: darkPrimaryColor,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: darkPrimaryColor),
      headlineMedium: TextStyle(color:darkPrimaryColor)
    ),
    iconTheme: IconThemeData(color: darkPrimaryColor)
);

final ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimaryColor,
    scaffoldBackgroundColor: darkPrimaryColor,
    colorScheme: ColorScheme.dark(
      primary: darkPrimaryColor,
      secondary: lightPrimaryColor,
    ),
    textTheme: TextTheme(
        bodyMedium: TextStyle(color: lightPrimaryColor),
        headlineMedium: TextStyle(color:lightPrimaryColor)
    ),
    iconTheme: IconThemeData(color: lightPrimaryColor)
);