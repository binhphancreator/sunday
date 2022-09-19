import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const bigboldh1 = TextStyle(fontSize: 35, color: AppColors.primaryTextColor, fontFamily: 'Quicksand', fontWeight: FontWeight.w600);

  static const h1 = TextStyle(
    fontSize: 18,
    color: AppColors.primaryTextColor,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.normal,
  );
  static const boldh1 = TextStyle(fontSize: 18, color: AppColors.primaryTextColor, fontFamily: 'Quicksand', fontWeight: FontWeight.w600);
  static const boldh2 = TextStyle(fontSize: 18, color: AppColors.primaryTextColor, fontFamily: 'Quicksand', fontWeight: FontWeight.w600);
  static const boldh3 = TextStyle(fontSize: 16, color: AppColors.primaryTextColor, fontFamily: 'Quicksand', fontWeight: FontWeight.w500);
  static const lightboldh2 = TextStyle(fontSize: 18, color: AppColors.secondaryTextColor, fontFamily: 'Quicksand', fontWeight: FontWeight.w500);
  static const lightboldh3 = TextStyle(fontSize: 16, color: AppColors.secondaryTextColor, fontFamily: 'Quicksand', fontWeight: FontWeight.w500);
  static const lightboldh4 = TextStyle(fontSize: 15, color: AppColors.secondaryTextColor, fontFamily: 'Quicksand', fontWeight: FontWeight.w500);

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
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontFamily: 'Quicksand',
    height: 1.2,
  );

  static const primaryBoldTextBtn = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontFamily: 'Quicksand',
    height: 1.2,
  );

  static const secondaryNormalTextBtn = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
    fontFamily: 'Quicksand',
    height: 1.2,
  );

  static const secondaryBoldTextBtn = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
    fontFamily: 'Quicksand',
    height: 1.2,
  );

  static const mainNormalTextBtn = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
    fontFamily: 'Quicksand',
    height: 1.2,
  );
}
