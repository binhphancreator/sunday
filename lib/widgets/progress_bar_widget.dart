import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_colors.dart';

class ProgressBarWidget extends StatefulWidget {
  final double percent;
  const ProgressBarWidget({super.key, required this.percent});

  @override
  State<ProgressBarWidget> createState() => _ProgressBarWidgetState();
}

class _ProgressBarWidgetState extends State<ProgressBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 8,
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.middleBgColor,
            ),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 2,
            bottom: 2,
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: widget.percent,
              child: Container(
                height: 4,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), gradient: AppColors.primaryGradient),
              ),
            )),
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: widget.percent,
              heightFactor: 1.0,
              child: Stack(
                children: [
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 8,
                        height: 8,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), gradient: AppColors.primaryGradient),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColors.primaryBgColor),
                        ),
                      )),
                ],
              ),
            )),
      ],
    );
  }
}
