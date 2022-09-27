import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';

class MenuBarWidget extends StatefulWidget {
  const MenuBarWidget({super.key});

  @override
  State<MenuBarWidget> createState() => _MenuBarWidgetState();
}

class _MenuBarWidgetState extends State<MenuBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: AppColors.thirdGradient,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'assets/icons/regular/pencil.svg',
                  color: AppColors.whiteIconColor,
                  width: 20,
                )),
          ),
          SizedBox(
            width: 16,
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: AppColors.primaryGradient,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'assets/icons/regular/plus.svg',
                  color: AppColors.whiteIconColor,
                  width: 20,
                )),
          ),
        ],
      ),
    );
  }
}
