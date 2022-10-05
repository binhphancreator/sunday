import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';

enum IconTypes { regular, solid }

class MenuBarItemWidget extends StatelessWidget {
  final String iconAsset;
  final Color? iconColor;
  final Color? dotColor;
  final Color? bgColor;
  final EdgeInsets? padding;

  final Function()? onTap;

  const MenuBarItemWidget({
    Key? key,
    required this.iconAsset,
    this.iconColor,
    this.dotColor,
    this.onTap,
    this.bgColor,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(context) {
    return FittedBox(
      fit: BoxFit.fitHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: onTap ?? () {},
              splashColor: Colors.transparent,
              borderRadius: BorderRadius.circular(32),
              child: Container(
                decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 15), color: AppColors.primaryBoxShadowColor, blurRadius: 40)]),
                child: Container(
                  padding: padding ?? EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: bgColor ?? Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    gradient: AppColors.secondaryGradient,
                  ),
                  child: SvgPicture.asset(
                    resolveIconAsset(iconAsset, IconTypes.regular),
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                    color: iconColor ?? AppColors.defaultIconColor,
                  ),
                ),
              )),
          SizedBox(
            height: 0,
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: dotColor ?? Colors.transparent),
          )
        ],
      ),
    );
  }

  String resolveIconAsset(String icon, IconTypes iconTypes) {
    switch (iconTypes) {
      case IconTypes.regular:
        return 'assets/icons/regular/$icon';
      default:
        return 'assets/icons/regular/$icon';
    }
  }
}
