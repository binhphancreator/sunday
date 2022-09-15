import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const h1 = TextStyle(
    fontSize: 18,
    color: AppColors.primaryTextColor,
    fontFamily: 'Quicksand',
  );

  static const big50 = TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
    fontFamily: 'Quicksand',
    height: 1.5,
  );
}