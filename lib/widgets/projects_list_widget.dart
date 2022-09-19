import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/config/themes/app_text_styles.dart';

class ProjectListWidget extends StatefulWidget {
  const ProjectListWidget({super.key});

  @override
  State<ProjectListWidget> createState() => _ProjectListWidgetState();
}

class _ProjectListWidgetState extends State<ProjectListWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
                width: 300,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [BoxShadow(offset: Offset(0, 15), color: AppColors.primaryBoxShadowColor, blurRadius: 40)]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dribble Shot',
                          style: AppTextStyles.boldh1,
                        ),
                        SvgPicture.asset(
                          'assets/icons/regular/menu-dots.svg',
                          width: 20,
                          height: 20,
                          color: AppColors.menuInactiveColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'at Enver Studio',
                      style: AppTextStyles.lightboldh2,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
              Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 5,
                    decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.only(topRight: Radius.zero, bottomRight: Radius.zero, topLeft: Radius.circular(12), bottomLeft: Radius.circular(12))),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
