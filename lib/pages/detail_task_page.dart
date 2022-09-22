import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/config/themes/app_text_styles.dart';
import 'package:sunday/widgets/progress_bar_widget.dart';
import 'package:sunday/widgets/top_bar_widget.dart';

class DetailTaskPage extends StatefulWidget {
  const DetailTaskPage({super.key});

  @override
  State<DetailTaskPage> createState() => _DetailTaskPageState();
}

class _DetailTaskPageState extends State<DetailTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBarWidget(
        height: 72,
        child: Container(
          // padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                borderRadius: BorderRadius.circular(20),
                customBorder: CircleBorder(side: BorderSide.none),
                child: SvgPicture.asset(
                  'assets/icons/regular/arrow-small-left.svg',
                  width: 32,
                  color: AppColors.defaultIconColor,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), gradient: AppColors.secondaryGradient),
                  child: Text(
                    'In Progress',
                    style: AppTextStyles.primaryBoldTextBtn,
                  )),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Dribble Shot ⚡',
                style: AppTextStyles.boldh1,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Note:',
                    style: AppTextStyles.boldh3,
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.transparent,
                    child: SvgPicture.asset(
                      'assets/icons/regular/edit.svg',
                      width: 20,
                      color: AppColors.defaultIconColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Design a mobile themed task manager application, then upload it on social media like instagram and dribble',
                style: AppTextStyles.lightboldh5,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ProgressBarWidget(
                percent: .75,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0%',
                    style: AppTextStyles.boldh4,
                  ),
                  Text(
                    '75%',
                    style: AppTextStyles.mainSmallBoldTextBtn,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), gradient: AppColors.primaryGradient),
                        child: SvgPicture.asset(
                          'assets/icons/solid/cloud-upload-alt.svg',
                          width: 24,
                          color: AppColors.whiteIconColor,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upload at',
                            style: AppTextStyles.lightboldh5,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Enver Studio',
                            style: AppTextStyles.boldh3,
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), gradient: AppColors.thirdGradient),
                        child: SvgPicture.asset(
                          'assets/icons/regular/calendar-lines.svg',
                          width: 24,
                          color: AppColors.whiteIconColor,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Deadline',
                            style: AppTextStyles.lightboldh5,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '14, Jan 2022',
                            style: AppTextStyles.boldh3,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
      backgroundColor: AppColors.bgColor,
    );
  }
}
