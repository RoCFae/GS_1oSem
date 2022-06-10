import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Georgia',
  brightness: Brightness.light,
  primaryColor: const Color.fromARGB(255, 15, 19, 60),
  primaryColorDark: const Color.fromARGB(255, 11, 13, 36),
  backgroundColor: const Color.fromRGBO(210, 211, 223, 80),
  scaffoldBackgroundColor: const Color.fromRGBO(210, 211, 223, 80),


  elevatedButtonTheme: ElevatedButtonThemeData(
    
    style: ElevatedButton.styleFrom(
    primary: const Color.fromARGB(255, 15, 19, 60),
    onPrimary: const Color.fromARGB(255, 28, 33, 85),
    shadowColor: const  Color.fromARGB(255, 28, 33, 85),
    textStyle: const TextStyle(
              color: Color.fromARGB(255, 194, 194, 194),
              fontSize: 30,
              fontWeight: FontWeight.bold),
    )
  ),
  
  
  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 15, 19, 60),
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 194, 194, 194),
          fontSize: 25)
  ),
  
  
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color.fromARGB(255, 15, 19, 60),),
    bodyText2: TextStyle(color: Color.fromARGB(255, 15, 19, 60),),
  ).apply(
    bodyColor: const Color.fromARGB(255, 15, 19, 60),
    displayColor: const Color.fromARGB(255, 15, 19, 60),
  ),

  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(
      vertical: 22,
      horizontal: 26,
    ),
    fillColor: Color.fromARGB(255, 15, 19, 60),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 15, 19, 60),
      ),
    ),
    labelStyle: TextStyle(
      fontSize: 20,
      decorationColor: Color.fromARGB(255, 194, 194, 194),
    ),
  ),


);
