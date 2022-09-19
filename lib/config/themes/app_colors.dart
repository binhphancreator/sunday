import 'package:flutter/material.dart';

class AppColors {
  static const primaryBgColor = Color(0xFFFFFFFF);
  static const lightTextColor = Color(0xFFFFFFFF);
  static const primaryTextColor = Color(0xFF1B2631);
  static const secondaryTextColor = Color(0xFF566573);
  static const primaryBtnColor = Color(0xFF1B2631);
  static const menuBgColor = Color(0xFFFFFFFF);
  static const bgColor = Color(0xFFF5F4F6);
  static const primaryColor = Color(0xFFb965fb);
  static const secondaryColor = Color(0xFF69e42e);
  static const menuInactiveColor = Color(0xFF424949);
  static const primaryBoxShadowColor = Color.fromARGB(30, 17, 12, 46);
  static const secondaryGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 171, 219, 148),
      secondaryColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
