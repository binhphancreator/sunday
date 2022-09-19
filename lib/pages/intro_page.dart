import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_text_styles.dart';
import 'package:sunday/generated/l10n.dart';
import 'package:sunday/widgets/intro_carosel_widget.dart';
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
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
            ),
            IntroCaroselWidget(),
            SizedBox(
              height: 48,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutesPage.homePage);
                SharedPreferences.getInstance().then((prefs) async => await prefs.setBool(AppPrefs.introDisplayed, true));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: AppColors.primaryColor,
                ),
                width: MediaQuery.of(context).size.width - 64,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: Text(
                  S.of(context).let_begin,
                  style: AppTextStyles.primaryNormalTextBtn,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
