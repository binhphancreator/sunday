import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/widgets/menu_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MenuBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            Text('Home'),
          ],
        ),
      ),
      backgroundColor: AppColors.bgColor,
    );
  }
}
