import 'package:flutter/material.dart';
import 'package:money_flow/exports.dart';

MaterialColor PrimaryMaterialColor = MaterialColor(
  4278451357,
  <int, Color>{
    50: Color.fromRGBO(
      3,
      252,
      157,
      .1,
    ),
    100: Color.fromRGBO(
      3,
      252,
      157,
      .2,
    ),
    200: Color.fromRGBO(
      3,
      252,
      157,
      .3,
    ),
    300: Color.fromRGBO(
      3,
      252,
      157,
      .4,
    ),
    400: Color.fromRGBO(
      3,
      252,
      157,
      .5,
    ),
    500: Color.fromRGBO(
      3,
      252,
      157,
      .6,
    ),
    600: Color.fromRGBO(
      3,
      252,
      157,
      .7,
    ),
    700: Color.fromRGBO(
      3,
      252,
      157,
      .8,
    ),
    800: Color.fromRGBO(
      3,
      252,
      157,
      .9,
    ),
    900: Color.fromRGBO(
      3,
      252,
      157,
      1,
    ),
  },
);

ThemeData myTheme = ThemeData(
  // fontFamily: "customFont",
  fontFamily: GoogleFonts.poppins().fontFamily,
  primaryColor: Color(0xff03fc9d),
  buttonColor: Color.fromARGB(255, 2, 103, 90),
  accentColor: Color(0xff03fc9d),
  cardColor: Color(0xff03fc9d),

  // secondaryHeaderColor: ,
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.black, fontSize: 16),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Color.fromARGB(255, 2, 103, 90),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),

  primarySwatch: PrimaryMaterialColor,

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Color(0xff03fc9d),
      ),
    ),
  ),
);

class ThemeHelper {}
