import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/config/themes/app_text_styles.dart';
import 'package:sunday/widgets/days_week_list_widget.dart';
import 'package:sunday/widgets/menu_bar_widget.dart';
import 'package:sunday/widgets/projects_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _srcAvatar = 'https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MenuBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: AppColors.bgColorWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(_srcAvatar), fit: BoxFit.cover),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Phan Văn Bình',
                                  style: AppTextStyles.boldh2,
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Good morning 👋',
                                  style: AppTextStyles.lightboldh4,
                                  textAlign: TextAlign.start,
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                'assets/icons/regular/search.svg',
                                width: 16,
                                height: 16,
                                color: AppColors.menuInactiveColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create and',
                          style: AppTextStyles.bigboldh1,
                        ),
                        Text(
                          'Check Daily Task 🙌',
                          style: AppTextStyles.bigboldh1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Weekly Task',
                          style: AppTextStyles.lightboldh3,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/regular/plus.svg',
                            width: 16,
                            height: 16,
                            color: AppColors.menuInactiveColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 0),
                    child: DaysWeekListWidget(),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 0),
                    child: ProjectListWidget(),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                ],
              ),
            ),
            Expanded(child: Column())
          ],
        ),
      ),
      backgroundColor: AppColors.bgColor,
    );
  }
}
