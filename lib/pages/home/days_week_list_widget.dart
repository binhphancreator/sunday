import 'package:flutter/cupertino.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/config/themes/app_text_styles.dart';

class DaysWeekListWidget extends StatefulWidget {
  const DaysWeekListWidget({super.key});

  @override
  State<DaysWeekListWidget> createState() => _DaysWeekListWidgetState();
}

class _DaysWeekListWidgetState extends State<DaysWeekListWidget> {
  final List<String> shortWeekday = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"];
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime firstDayOfWeek = now.subtract(Duration(days: now.weekday - 1));

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [0, 1, 2, 3, 4, 5, 6].map((index) {
          var currentDay = firstDayOfWeek.add(Duration(days: index));
          return GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.only(right: 12),
              width: 55,
              height: 80,
              decoration: BoxDecoration(color: now.weekday == currentDay.weekday ? AppColors.primaryColor : AppColors.secondaryBgColor, borderRadius: BorderRadius.circular(30), gradient: now.weekday == currentDay.weekday ? AppColors.primaryGradient : AppColors.lightGradient),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(shortWeekday[currentDay.weekday - 1], style: now.weekday == currentDay.weekday ? AppTextStyles.whiteboldh3 : AppTextStyles.boldh3),
                  SizedBox(
                    height: 4,
                  ),
                  Text(currentDay.day.toString(), style: now.weekday == currentDay.weekday ? AppTextStyles.whiteboldh3 : AppTextStyles.boldh3),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
