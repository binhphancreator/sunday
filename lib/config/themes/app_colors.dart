import 'package:flutter/material.dart';

class AppColors {
  static const primaryBgColor = Color(0xFFFFFFFF);
  static const lightTextColor = Color(0xFFFFFFFF);
  static const primaryTextColor = Color(0xFF2B2C31);
  static const secondaryTextColor = Color(0xFF566573);
  static const primaryBtnColor = Color(0xFF1B2631);
  static const lightBtnColor = Color(0xFFf3f0ee);
  static const menuBgColor = Color(0xFFFFFFFF);
  static const bgColor = Color(0xFFF5F4F6);
  static const bgColorWhite = Color(0xFFFDFDFD);
  static const primaryColor = Color(0xFFb965fb);
  static const lightPrimaryColor = Color(0xFFE8DAEF);
  static const secondaryColor = Color(0xFF69e42e);
  static const menuInactiveColor = Color(0xFF424949);
  static const defaultIconColor = Color(0xFF424949);
  static const whiteIconColor = Colors.white;
  static const primaryBoxShadowColor = Color.fromARGB(30, 17, 12, 46);
  static const primaryGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 214, 161, 255),
      Color(0xFFBC6BFC),
      Color(0xFFB053F9),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const secondaryGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 171, 219, 148),
      secondaryColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const thirdGradient = LinearGradient(
    colors: [
      Color(0xFFFEB16A),
      Color(0xFFF68821),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const lightGradient = LinearGradient(
    colors: [
      Color(0xFFF5F4F6),
      Color(0xFFF5F4F6),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
