import 'package:flutter/material.dart';
import 'package:job_timercs/app/core/constansts.dart';

class ThemeCustom {
  static final _borderRadius = BorderRadius.circular(8);
  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: _borderRadius,
    borderSide: BorderSide(color: ColorsThemes.grey),
  );

  static ThemeData themeData = ThemeData(
    useMaterial3: true,
    //primarySwatch: ColorsThemes.primarySwatch,
    primaryColor: const Color(0xFF016e13),
    primaryColorLight: const Color(0xFF016e13),
    primaryColorDark: const Color(0xFF016e13),
    fontFamily: FontConstants.fontFamily,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: ColorsThemes.brow),
      titleTextStyle: TextStyle(
        fontFamily: FontConstants.fontFamily,
        color: ColorsThemes.brow,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      constraints: const BoxConstraints(
        maxHeight: 70,
        minHeight: 70,
      ),
      //  floatingLabelBehavior: FloatingLabelBehavior.never,
      filled: true,
      fillColor: Colors.white,
      labelStyle: TextStyle(color: ColorsThemes.brow),
      floatingLabelStyle: TextStyle(
        color: ColorsThemes.brow,
        fontWeight: FontWeight.w600,
      ),

      hintStyle: TextStyle(color: ColorsThemes.brow),
      prefixStyle: TextStyle(color: ColorsThemes.brow),
      suffixStyle: TextStyle(color: ColorsThemes.brow),
      iconColor: ColorsThemes.brow,
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder.copyWith(
        borderSide: BorderSide(color: ColorsThemes.brow),
      ),
      errorBorder: _defaultInputBorder.copyWith(
        borderSide: BorderSide(color: ColorsThemes.red),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: _borderRadius,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: ColorsThemes.brow,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: _borderRadius,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorsThemes.brow,
      iconSize: 12,
      shape: const CircleBorder(),
    ),
  );
}
