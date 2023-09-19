import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lighttheme = ThemeData(
      primaryColor: const Color(0xffB7935F),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffB7935F),
        selectedIconTheme: IconThemeData(color: Colors.black, size: 30),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 28),
        unselectedItemColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black)),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          bodyMedium: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 25,
            color: Colors.black,
          ),
          bodySmall: GoogleFonts.elMessiri(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )));
  static ThemeData darktheme = ThemeData(
      appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black)));
}
