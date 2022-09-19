import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const h1 = TextStyle(
    fontSize: 18,
    color: AppColors.primaryTextColor,
    fontFamily: 'Quicksand',
  );

  static const bigIntro = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
    fontFamily: 'Quicksand',
    height: 1.2,
  );

  static const bigIntro2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryTextColor,
    fontFamily: 'Quicksand',
    height: 1.2,
  );

  static const primaryNormalTextBtn = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontFamily: 'Quicksand',
    height: 1.2,
  );
}
