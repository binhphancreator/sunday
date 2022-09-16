import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';

class MenuBarWidget extends StatefulWidget {
  const MenuBarWidget({super.key});

  @override
  State<MenuBarWidget> createState() => _MenuBarWidgetState();
}

class _MenuBarWidgetState extends State<MenuBarWidget> {
  String menuItemSelected = 'home';

  final menuItems = [
    {
      'icon': 'assets/icons/regular/home.svg',
      'route': 'Home',
      'text': 'Home',
    },
    {
      'icon': 'assets/icons/regular/document.svg',
      'route': 'Projects',
      'text': 'Projects',
    },
    {
      'icon': 'assets/icons/regular/plus.svg',
      'route': 'Add_Project',
      'text': 'Add Project',
    },
    {
      'icon': 'assets/icons/regular/bell.svg',
      'route': 'Notifications',
      'text': 'Notifications',
    },
    {
      'icon': 'assets/icons/regular/settings.svg',
      'route': 'Settings',
      'text': 'Settings',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.menuBgColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: menuItems
              .map((menuItem) => IconButton(
                  onPressed: () => {},
                  icon: SvgPicture.asset(
                    menuItem["icon"]!,
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                  )))
              .toList(),
        ),
      ),
    );
  }
}
