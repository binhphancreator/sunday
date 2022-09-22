import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/routes/routes.dart';
import 'package:sunday/widgets/progress_bar_widget.dart';

import '../config/themes/app_colors.dart';
import '../config/themes/app_text_styles.dart';

class TaskItemWidget extends StatefulWidget {
  const TaskItemWidget({super.key});

  @override
  State<TaskItemWidget> createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, RoutesPage.detailTaskPage),
      child: Stack(
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
                      style: AppTextStyles.boldh3,
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
                  style: AppTextStyles.lightboldh4,
                ),
                SizedBox(
                  height: 12,
                ),
                ProgressBarWidget(
                  percent: .3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/regular/calendar-lines.svg',
                          width: 16,
                          height: 16,
                          color: AppColors.defaultIconColor,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Wed, 14 Jan 2022',
                          style: AppTextStyles.lightboldh5,
                        )
                      ],
                    ),
                    Text(
                      '75%',
                      style: AppTextStyles.mainSmallBoldTextBtn,
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
              left: 0,
              top: 16,
              child: Container(
                width: 5,
                height: 32,
                decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.only(topLeft: Radius.zero, bottomLeft: Radius.zero, topRight: Radius.circular(12), bottomRight: Radius.circular(12))),
              )),
        ],
      ),
    );
  }
}
