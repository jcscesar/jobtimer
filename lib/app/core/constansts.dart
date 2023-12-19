import 'package:flutter/material.dart';

class FontConstants {
  static const fontFamily = 'Poppins';
}

class ImagesConstants {
  static const backgroundChair = './assets/images/background_image_chair.jpg';
  static const logoChair = './assets/images/imgLogo.png';
  static const avatar = './assets/images/avatar.png';
}

class ColorsThemes {
  static Color black = const Color(0xff000000);
  static Color white = const Color(0xffFFFFFF);
  static Color grey = const Color(0xff999999);
  static Color brow = const Color(0xFF016E13);
  static Color greyligth = const Color(0xffE6E2E9);
  static Color greyligthCalendar = const Color.fromARGB(255, 90, 89, 90);
  static Color greyAvatar = const Color(0xffbdbdbd);
  static Color red = const Color(0xffEB1212);
  static Color colorCalendarLight = const Color(0xffe6e2e9);
  static Color colorCalendarDark = brow;

  static MaterialColor primarySwatch = const MaterialColor(0xFF016E13, {
    0: Color(0xFF016e13),
    10: Color(0xFF016311),
    20: Color(0xFF01580f),
    30: Color(0xFF014d0d),
    40: Color(0xFF01420b),
    50: Color(0xFF01370a),
    60: Color(0xFF002c08),
    70: Color(0xFF002106),
    80: Color(0xFF001604),
    90: Color(0xFF000b02),
    100: Color(0x00000000),
  });
}
