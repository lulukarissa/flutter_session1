import 'package:flutter/material.dart';

const String _fontFamilyPoppins = 'Poppins';

const AppBarTheme _appBarTheme = AppBarTheme(
  elevation: 0.0,
  centerTitle: true,
);

final ButtonStyle _buttonStyle = TextButton.styleFrom(
  elevation: 0,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  padding: const EdgeInsets.all((16)),
  primary: Colors.white,
  textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
);

final ThemeData lightThemeData = ThemeData(
  fontFamily: _fontFamilyPoppins,
  brightness: Brightness.light,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
  ),
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light(
    primary: Colors.black,
    secondary: Color(0xffFA7F35),
  ),
  appBarTheme: _appBarTheme.copyWith(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      color: Colors.black,
      titleTextStyle:
          const TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black)),
  textButtonTheme: TextButtonThemeData(
      style: _buttonStyle.merge(TextButton.styleFrom(
    backgroundColor: const Color(0xffFA7F35),
  ))),
);

final ThemeData darkThemeData = ThemeData(
  fontFamily: _fontFamilyPoppins,
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
  ),
  scaffoldBackgroundColor: Colors.black,
  colorScheme: const ColorScheme.dark(
    primary: Colors.white,
    secondary: Color(0xff1814E4),
  ),
  appBarTheme: _appBarTheme.copyWith(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      color: Colors.white,
      titleTextStyle:
          const TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white),
      iconTheme: const IconThemeData(color: Colors.white)),
  textButtonTheme: TextButtonThemeData(
      style: _buttonStyle.merge(TextButton.styleFrom(
    backgroundColor: const Color(0xff1814E4),
  ))),
);
