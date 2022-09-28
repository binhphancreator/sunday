import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBgColor,
      body: SafeArea(
        child: Column(
          //scrollDirection: Axis.vertical,
          children: [
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
