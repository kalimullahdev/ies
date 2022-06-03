import 'package:flutter/material.dart';

class ColorResources {
  static const Color colorPrimary = Color.fromARGB(255, 209, 101, 39);
  static const Color underlineColor = Color(0xFFCCCCCC);
  static const Color textColor1 = Color(0xFF515151);
  static const Color textColor2 = Color(0xff777777);
  static const Color textColor3 = Color(0xFFaaaaaa);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color appBackgroundColor = Color(0xffFFF3E3);

  static const LinearGradient blueLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    colors: [
      Color(0xffFF912C),
      Color(0xffAB6211),
    ],
  );
  static const LinearGradient greenLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    colors: [
      Color(0xff26B9D1),
      Color(0xff13C2B4),
    ],
  );
}
