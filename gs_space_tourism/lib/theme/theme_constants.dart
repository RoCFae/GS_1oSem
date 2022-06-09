import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Georgia',
  brightness: Brightness.light,
  primaryColor: const Color.fromARGB(255, 253, 188, 51),
  primaryColorDark: const Color.fromARGB(255, 189, 133, 14),
  backgroundColor: const Color.fromRGBO(210, 211, 223, 80),
  scaffoldBackgroundColor: const Color.fromRGBO(210, 211, 223, 80),


  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: const Color.fromARGB(255, 253, 188, 51),
    onPrimary: const Color.fromARGB(255, 175, 126, 20),
    shadowColor: const Color.fromARGB(255, 161, 118, 24),
  )),
  
  
  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 15, 19, 60),
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 253, 188, 51),
          fontSize: 25)
  ),
  
  
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color.fromARGB(255, 253, 188, 51)),
    bodyText2: TextStyle(color: Color.fromARGB(255, 253, 188, 51)),
  ).apply(
    bodyColor: const Color.fromARGB(255, 253, 188, 51),
    displayColor: const Color.fromARGB(255, 253, 188, 51),
  ),

);
