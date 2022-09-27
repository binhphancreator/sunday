import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/config/themes/app_text_styles.dart';

class CategoryItemWidget extends StatefulWidget {
  const CategoryItemWidget({super.key});

  @override
  State<CategoryItemWidget> createState() => _CategoryItemWidgetState();
}

class _CategoryItemWidgetState extends State<CategoryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primaryBgColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryBgColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/icons/regular/code.png',
                    width: 32,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Coding',
                  style: AppTextStyles.boldh3,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '12 Tasks',
                  style: AppTextStyles.lightboldh4,
                )
              ],
            ),
            SvgPicture.asset(
              'assets/icons/regular/arrow-small-right.svg',
              width: 32,
              fit: BoxFit.contain,
              color: AppColors.defaultIconColor,
            )
          ],
        ),
      ),
    );
  }
}
