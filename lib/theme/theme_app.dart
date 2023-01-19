
import 'package:flutter/material.dart';
class ThemeApp{
  static const Color black = Color(0xff242951);
  static const Color white = Color(0xffedf2f4);
  static const Color red = Color(0xffef233c);
  static const Color gray = Color(0xff383D6E);
  static const Color blue = Color(0xff3E9EFD);

  static final ThemeData appConfig = ThemeData.light().copyWith(
    scaffoldBackgroundColor: black,
    textTheme: ThemeData.light().textTheme.copyWith(
      headline1: const TextStyle(
        fontFamily: "Open Sans",
        color: white,
        fontSize: 22.0,
        fontWeight: FontWeight.w700,
      ),
      subtitle1: const TextStyle(
        fontFamily: "Open Sans",
        color: white,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      )
    )
  );
}