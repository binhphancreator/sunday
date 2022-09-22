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
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.lightPrimaryColor,
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: widget.percent,
              child: Container(
                height: 4,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), gradient: AppColors.primaryGradient),
              ),
            ))
      ],
    );
  }
}
