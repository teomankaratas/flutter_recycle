import 'package:flutter/material.dart';
import 'package:flutter_recycle/theme/color_constants.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    backgroundColor: ColorConstants.whiteSmoke,
    scaffoldBackgroundColor: ColorConstants.whiteSmoke,
    buttonTheme:const ButtonThemeData(buttonColor: ColorConstants.jaguar),
    primaryColor: ColorConstants.eden,
    textTheme: const TextTheme(headline6: TextStyle(color: Colors.white)),
    
  );

  static final darkTheme = ThemeData.dark().copyWith(
    buttonTheme:const ButtonThemeData(buttonColor: ColorConstants.jaguar),
    backgroundColor: const Color(0xFF57859D),
    primaryColor: const Color(0xFFFF6E48),
    textTheme: const TextTheme(headline6: TextStyle(color: Colors.white)),
  );
}
