import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/config/themes/app_text_styles.dart';
import 'package:sunday/widgets/top_bar_widget.dart';

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
      appBar: TopBarWidget(
        height: 72,
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Profile',
                style: AppTextStyles.boldh3,
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/regular/menu-dots.svg',
                  width: 24,
                  color: AppColors.defaultIconColor,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/301958/pexels-photo-301958.jpeg?auto=compress&cs=tinysrgb&w=72&dpr=1'),
                        fit: BoxFit.cover,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Daniel Austin',
                  style: AppTextStyles.boldh3,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'daniel_austin',
                  style: AppTextStyles.boldh5,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '27',
                          style: AppTextStyles.boldh1,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Projects',
                          style: AppTextStyles.lightboldh4,
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '759',
                          style: AppTextStyles.boldh1,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Tasks',
                          style: AppTextStyles.lightboldh4,
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '27',
                          style: AppTextStyles.boldh1,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Groups',
                          style: AppTextStyles.lightboldh4,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
