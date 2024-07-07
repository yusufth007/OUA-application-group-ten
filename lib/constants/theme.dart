import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFADDCEC),    primaryColor: Colors.white,
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xFFD6BB76), // Buton rengi
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black, backgroundColor: Color(0xFFD6BB76), // Buton üzerindeki yazı rengi
      ),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.black, fontSize: 16),
      bodyText2: TextStyle(color: Colors.black, fontSize: 14),
      headline1: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
    ),
    appBarTheme: AppBarTheme(
      color: Color(0xFFADDCEC), toolbarTextStyle: TextTheme(
        headline6: TextStyle(color: Colors.black, fontSize: 20),
      ).bodyText2, titleTextStyle: TextTheme(
        headline6: TextStyle(color: Colors.black, fontSize: 20),
      ).headline6,
    ),


  );

}
