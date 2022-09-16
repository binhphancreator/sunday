import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sunday/config/constants/app_prefs.dart';
import 'package:sunday/generated/l10n.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../config/themes/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroCaroselWidget extends StatefulWidget {
  const IntroCaroselWidget({super.key});

  @override
  State<IntroCaroselWidget> createState() => _IntroCaroselWidgetState();
}

class _IntroCaroselWidgetState extends State<IntroCaroselWidget> {
  int _indexCurrent = 0;
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> carouselItems = [
      Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
        child: RichText(
          text: TextSpan(style: AppTextStyles.bigIntro, children: [
            TextSpan(text: S.of(context).intro_highlight, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: S.of(context).intro_normal),
            WidgetSpan(
                child: Transform(
              transform: Matrix4.translationValues(0, 0, 0),
              child: SvgPicture.asset(
                'assets/icons/light.svg',
                height: 50,
              ),
            ))
          ]),
        ),
      ),
    ];

    return Column(children: <Widget>[
      CarouselSlider(
        items: carouselItems,
        carouselController: controller,
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: false,
          viewportFraction: 1.0,
          aspectRatio: 2.0,
          onPageChanged: (index, reason) => {
            setState(
              () {
                _indexCurrent = index;
              },
            )
          },
          height: 150,
          disableCenter: true,
        ),
      ),
      SizedBox(
        height: 0,
      ),
      Padding(
        padding: EdgeInsets.only(left: 32.0, right: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: carouselItems.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => controller.animateToPage(entry.key),
                  child: Container(
                    width: _indexCurrent == entry.key ? 11.0 : 6,
                    height: _indexCurrent == entry.key ? 11.0 : 6,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF000000).withOpacity(_indexCurrent == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'Home');
                SharedPreferences.getInstance().then((prefs) async => await prefs.setBool(AppPrefs.introDisplayed, true));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: Color(0xFF111111),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  child: SvgPicture.asset(
                    'assets/icons/long_arrow_right.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
