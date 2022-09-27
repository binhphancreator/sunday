import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/config/themes/app_text_styles.dart';

class ChildTaskItemWidget extends StatefulWidget {
  final double percent;

  const ChildTaskItemWidget({super.key, required this.percent});

  @override
  State<ChildTaskItemWidget> createState() => _ChildTaskItemWidgetState();
}

class _ChildTaskItemWidgetState extends State<ChildTaskItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(offset: Offset(0, 1), color: AppColors.primaryBoxShadowColor.withOpacity(.2), blurRadius: 3),
            ],
            color: AppColors.primaryBgColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircularPercentIndicator(
                    radius: 25.0,
                    lineWidth: 2.0,
                    percent: widget.percent,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: widget.percent < 1
                        ? Text(
                            "${(widget.percent * 100).round()}%",
                            style: AppTextStyles.boldh5,
                          )
                        : SvgPicture.asset(
                            'assets/icons/regular/check.svg',
                            width: 20,
                            color: AppColors.secondaryColor,
                          ),
                    animation: true,
                    backgroundColor: AppColors.secondaryBgColor,
                    linearGradient: widget.percent < 1 ? AppColors.primaryGradient : AppColors.secondaryGradient,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mencari Tema',
                        style: AppTextStyles.boldh2,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '11 Jan, 2022',
                        style: AppTextStyles.lightboldh5,
                      ),
                    ],
                  )
                ],
              ),
              GestureDetector(
                child: SvgPicture.asset(
                  'assets/icons/regular/menu-dots-vertical.svg',
                  width: 20,
                  color: AppColors.defaultIconColor,
                ),
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
            decoration: BoxDecoration(color: (widget.percent * 100).round() == 100 ? AppColors.secondaryColor : AppColors.primaryColor, borderRadius: BorderRadius.only(topLeft: Radius.zero, bottomLeft: Radius.zero, topRight: Radius.circular(12), bottomRight: Radius.circular(12))),
          ),
        ),
      ],
    );
  }
}
