import 'package:flutter/material.dart';

class AppColors {
  // Background
  static const primaryBgColor = Color(0xFFFFFFFF);
  static const secondaryBgColor = Color(0xFFF5F4F6);
  static const darkBgColor = Color(0xFF1B2631);
  static const middleBgColor = Color(0xFFE8DAEF);

  // Color Text
  static const lightTextColor = Color(0xFFFFFFFF);
  static const primaryTextColor = Color(0xFF2B2C31);
  static const secondaryTextColor = Color(0xFF566573);

  // Common Color
  static const primaryColor = Color(0xFFb965fb);
  static const secondaryColor = Color(0xFF69e42e);
  static const thirdColor = Color(0xFFF68821);

  // Icon Color
  static const defaultIconColor = Color(0xFF424949);
  static const lightIconColor = Color(0xFF4D5656);
  static const whiteIconColor = Colors.white;

  // Shadow Color
  static const primaryBoxShadowColor = Color.fromARGB(30, 17, 12, 46);

  // Gradient
  static const primaryGradient = LinearGradient(colors: [Color.fromARGB(255, 214, 161, 255), Color(0xFFBC6BFC), Color(0xFFB053F9)], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static const secondaryGradient = LinearGradient(colors: [Color.fromARGB(255, 171, 219, 148), secondaryColor], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static const thirdGradient = LinearGradient(colors: [Color(0xFFFEB16A), Color(0xFFF68821)], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static const lightGradient = LinearGradient(colors: [Color(0xFFF5F4F6), Color(0xFFF5F4F6)], begin: Alignment.topCenter, end: Alignment.bottomCenter);
}
