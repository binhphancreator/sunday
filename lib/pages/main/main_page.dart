import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/models/menu_item_model.dart';
import 'package:sunday/pages/home/home_page.dart';
import 'package:sunday/pages/profile/profile_page.dart';
import 'package:sunday/routes/routes.dart';
import 'package:sunday/pages/main/menu_bar_item_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;
  int _page = 0;
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
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: AppColors.primaryBgColor),
          child: Material(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: menuItems.asMap().entries.map((menuItem) {
                  return MenuBarItemWidget(
                    iconAsset: menuItem.value.icon,
                    iconColor: menuItem.value.center == true ? AppColors.whiteIconColor : (_page == menuItem.key ? AppColors.primaryColor : null),
                    bgColor: menuItem.value.center == true ? AppColors.secondaryColor : null,
                    dotColor: _page == menuItem.key ? (menuItem.value.center == true ? Colors.transparent : AppColors.primaryColor) : null,
                    onTap: () => navigationTapped(menuItem.key),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: onPageChanged,
          children: <Widget>[HomePage(), HomePage(), HomePage(), HomePage(), ProfilePage()],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void navigationTapped(int index) {
    _pageController.jumpToPage(index);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }
}
