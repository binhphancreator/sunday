import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';

enum IconTypes { regular, solid }

class MenuBarItemWidget extends StatelessWidget {
  final bool active;
  final bool center;
  final String iconAsset;

  const MenuBarItemWidget({
    Key? key,
    required this.iconAsset,
    this.active = false,
    this.center = false,
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
            onTap: () {},
            splashColor: center ? Colors.transparent : Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(32),
            child: Container(
              decoration: BoxDecoration(boxShadow: center ? [BoxShadow(offset: Offset(0, 15), color: AppColors.primaryBoxShadowColor, blurRadius: 40)] : []),
              child: Container(
                padding: EdgeInsets.all(center ? 16 : 12),
                decoration: BoxDecoration(color: center ? AppColors.secondaryColor : Colors.transparent, borderRadius: BorderRadius.circular(50), gradient: AppColors.secondaryGradient),
                child: SvgPicture.asset(active ? resolveIconAsset(iconAsset, IconTypes.solid) : resolveIconAsset(iconAsset, IconTypes.regular),
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                    color: center
                        ? Colors.white
                        : active
                            ? AppColors.primaryColor
                            : AppColors.defaultIconColor),
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: active ? AppColors.primaryColor : Colors.transparent),
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
        return 'assets/icons/solid/$icon';
    }
  }
}
