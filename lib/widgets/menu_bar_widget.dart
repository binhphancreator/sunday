import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/routes/routes.dart';
import 'package:sunday/widgets/menu_bar_item_widget.dart';

class MenuBarWidget extends StatefulWidget {
  const MenuBarWidget({super.key});

  @override
  State<MenuBarWidget> createState() => _MenuBarWidgetState();
}

class _MenuBarWidgetState extends State<MenuBarWidget> {
  String menuItemSelected = 'home';

  String currentRoute = RoutesPage.homePage;
  String centerRoute = RoutesPage.addProjectPage;

  final List<Map<String, String>> menuItems = [
    {
      'icon': 'home.svg',
      'route': RoutesPage.homePage,
      'text': 'Home',
    },
    {
      'icon': 'document.svg',
      'route': 'Projects',
      'text': 'Projects',
    },
    {
      'icon': 'plus.svg',
      'route': 'Add_Project',
      'text': 'Add Project',
    },
    {
      'icon': 'bell.svg',
      'route': 'Notifications',
      'text': 'Notifications',
    },
    {
      'icon': 'settings.svg',
      'route': 'Settings',
      'text': 'Settings',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primaryBgColor),
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: menuItems
                .map((menuItem) => MenuBarItemWidget(
                      iconAsset: menuItem['icon']!,
                      center: menuItem['route'] == centerRoute,
                      active: menuItem['route'] == currentRoute,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
