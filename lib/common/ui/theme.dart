import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  fontFamily: 'Poppins',
  visualDensity: VisualDensity.standard,
  primaryColor: const Color(0xff279eff),
  primaryColorLight: const Color(0xff279eff),
  primaryColorDark: const Color(0xff0c356a),
  shadowColor: const Color(0xffc2ccda),
  cardColor: const Color(0xffE9F5FF),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xffffffff),
    titleTextStyle: TextStyle(
      color: Color(0xff0c356a),
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
  ),
  scaffoldBackgroundColor: const Color(0xffffffff),
  splashColor: const Color(0x0dffffff),
  disabledColor: const Color(0xfff8f8fc),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: Color(0xff0c356a),
      fontSize: 20,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      color: Color(0xff0c356a),
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Color(0xffffffff),
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      color: Color(0xffffffff),
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 14,
      color: Color(0xff0c356a),
      fontWeight: FontWeight.w500,
    ),
  ),
);
