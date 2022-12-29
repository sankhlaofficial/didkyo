import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xffF9F9F9),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white))),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xffFF6D28), foregroundColor: Colors.white),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      foregroundColor: Colors.black,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      color: Color(0xffE6DDC4),
    ),
    iconTheme: const IconThemeData(
      color: Colors.red,
    ),
    textTheme: TextTheme(
        displayMedium:
            GoogleFonts.aladin(fontSize: 23, fontWeight: FontWeight.w800),
        titleMedium:
            GoogleFonts.sacramento(fontSize: 23, fontWeight: FontWeight.w800),
        titleSmall:
            GoogleFonts.sacramento(fontSize: 10, fontWeight: FontWeight.w800),
        titleLarge: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff393E46),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      onPrimary: Colors.black,
      primaryVariant: Colors.black,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      displayMedium: GoogleFonts.aladin(
          fontSize: 23, fontWeight: FontWeight.w800, color: Colors.white),
      titleMedium: GoogleFonts.sacramento(
          fontSize: 23, fontWeight: FontWeight.w800, color: Colors.yellow),
      titleSmall:
          GoogleFonts.sacramento(fontSize: 10, fontWeight: FontWeight.w800),
    ),
  );
}
