import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_text_styles.dart';
import 'package:sunday/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sunday/config/constants/app_prefs.dart';
import 'package:sunday/config/themes/app_colors.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _IntroPageState();
  }
}

class _IntroPageState extends State<IntroPage> {
  final int _indexCurrent = 0;
  final int _lengthIntro = 3;

  @override
  Widget build(BuildContext context) {
    var listIndicator = List<int>.generate(_lengthIntro, (i) => i + 1);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Image.asset(
                    'assets/images/desk-calendar.png',
                    height: 200,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Text(
                    tr('intro1'),
                    style: AppTextStyles.bigIntro,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    tr('sub_intro1'),
                    style: AppTextStyles.bigIntro2,
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
              SizedBox(
                height: 36,
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.0, right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: listIndicator.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: _indexCurrent == entry.key ? 12 : 6,
                            height: _indexCurrent == entry.key ? 12 : 6,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(shape: BoxShape.circle, color: _indexCurrent == entry.key ? AppColors.primaryColor : AppColors.darkBgColor.withOpacity(.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: AppColors.primaryColor,
                  ),
                  width: MediaQuery.of(context).size.width - 64,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Text(
                    tr('next'),
                    style: AppTextStyles.whiteboldh3,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesPage.homePage);
                  SharedPreferences.getInstance().then((prefs) async => await prefs.setBool(AppPrefs.introDisplayed, true));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: AppColors.middleBgColor,
                  ),
                  width: MediaQuery.of(context).size.width - 64,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Text(
                    tr('skip'),
                    style: AppTextStyles.primaryboldh3,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
