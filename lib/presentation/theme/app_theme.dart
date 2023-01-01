import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffF9F9F9),
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
      secondary: Colors.blue,
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.red,
    ),
    textTheme: TextTheme(
        labelSmall: GoogleFonts.lato(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        displayMedium:
            GoogleFonts.aladin(fontSize: 23, fontWeight: FontWeight.w800),
        titleMedium: GoogleFonts.sacramento(
            fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
        titleSmall:
            GoogleFonts.sacramento(fontSize: 10, fontWeight: FontWeight.w800),
        titleLarge: GoogleFonts.lato(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff393E46),
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
      primary: const Color(0xff393E46),
      onPrimary: Colors.black,
      primaryVariant: Colors.black,
      secondary: Colors.white,
    ),
    cardTheme: const CardTheme(
      color: Color(0xff000000),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      labelSmall: GoogleFonts.lato(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.aladin(
          fontSize: 23, fontWeight: FontWeight.w800, color: Colors.white),
      titleMedium: GoogleFonts.sacramento(
          fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
      titleSmall: GoogleFonts.sacramento(
          fontSize: 10, fontWeight: FontWeight.w800, color: Colors.white),
      titleLarge: GoogleFonts.lato(
          fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white),
    ),
  );
}
