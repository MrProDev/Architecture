import 'package:flutter/material.dart';

List<ThemeData> getThemes() {
  return [
    ThemeData(
        backgroundColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.pink)),
    ThemeData(
        backgroundColor: Colors.white,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
    ThemeData(
        backgroundColor: Colors.purple,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
    ThemeData(
        backgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red)),
    ThemeData(
        backgroundColor: Colors.red,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue)),
  ];
}

ThemeData darkThemeData() => ThemeData(
      primarySwatch: Colors.pink,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
      ),
    );

ThemeData lightThemeData() => ThemeData(
      primarySwatch: Colors.pink,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
      ),
    );
