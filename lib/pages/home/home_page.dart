import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/config/themes/app_text_styles.dart';
import 'package:sunday/pages/home/category_list_widget.dart';
import 'package:sunday/pages/home/days_week_list_widget.dart';
import 'package:sunday/widgets/menu_bar_widget.dart';
import 'package:sunday/pages/home/tasks_list_widget.dart';

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Colors.transparent, width: 2.0)),
                          hintText: 'Search...',
                          labelStyle: AppTextStyles.lightboldh5,
                          hintStyle: AppTextStyles.lightboldh4,
                          contentPadding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: SvgPicture.asset(
                              'assets/icons/regular/search.svg',
                              color: AppColors.defaultIconColor.withOpacity(.8),
                              fit: BoxFit.contain,
                            ),
                          ),
                          suffixIconConstraints: BoxConstraints(maxWidth: 36, maxHeight: 20),
                          fillColor: AppColors.bgColor,
                          hoverColor: AppColors.bgColor,
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0), borderRadius: BorderRadius.circular(12)),
                        ),
                        style: AppTextStyles.boldh5,
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
                    TasksListWidget(),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category Task',
                          style: AppTextStyles.lightboldh4,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'See all',
                            style: AppTextStyles.boldh4,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CategoryListWidget(),
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
    );
  }
}
