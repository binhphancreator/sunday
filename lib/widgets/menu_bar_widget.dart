import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/models/menu_item_model.dart';
import 'package:sunday/routes/routes.dart';
import 'package:sunday/widgets/menu_bar_item_widget.dart';

class MenuBarWidget extends StatefulWidget {
  const MenuBarWidget({super.key, required this.currentRoute, this.onMenuItemTap});

  final String currentRoute;
  final Function(String)? onMenuItemTap;

  @override
  State<MenuBarWidget> createState() => _MenuBarWidgetState();
}

class _MenuBarWidgetState extends State<MenuBarWidget> {
  final menuItems = [
    MenuItemModel(
      icon: 'home.svg',
      route: RoutesPage.homePage,
      text: 'Home',
    ),
    MenuItemModel(
      icon: 'document.svg',
      route: 'Projects',
      text: 'Projects',
    ),
    MenuItemModel(
      icon: 'plus.svg',
      route: 'Add_Project',
      text: 'Add Project',
      center: true,
    ),
    MenuItemModel(
      icon: 'bell.svg',
      route: 'Notifications',
      text: 'Notifications',
    ),
    MenuItemModel(
      icon: 'settings.svg',
      route: RoutesPage.profilePage,
      text: 'Settings',
    ),
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
                      iconAsset: menuItem.icon,
                      center: menuItem.center ?? false,
                      active: menuItem.route == widget.currentRoute,
                      onTap: () {
                        widget.onMenuItemTap!(menuItem.route);
                      },
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
