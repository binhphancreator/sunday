import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_colors.dart';
import 'package:sunday/generated/l10n.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../config/themes/app_text_styles.dart';

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset(
            'assets/images/desk-calendar.png',
            width: MediaQuery.of(context).size.width - 80,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            S.of(context).intro_slide_1,
            style: AppTextStyles.bigIntro,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            S.of(context).bl_intro_slide_1,
            style: AppTextStyles.bigIntro2,
            textAlign: TextAlign.center,
          ),
        ]),
      ),
    ];

    return Column(children: <Widget>[
      CarouselSlider(
        items: carouselItems,
        carouselController: controller,
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1.0,
          aspectRatio: 1,
          onPageChanged: (index, reason) => {
            setState(
              () {
                _indexCurrent = index;
              },
            )
          },
        ),
      ),
      SizedBox(
        height: 0,
      ),
      Padding(
        padding: EdgeInsets.only(left: 32.0, right: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: carouselItems.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => controller.animateToPage(entry.key),
                  child: Container(
                    width: _indexCurrent == entry.key ? 12 : 6,
                    height: _indexCurrent == entry.key ? 12 : 6,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.primaryBtnColor.withOpacity(_indexCurrent == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    ]);
  }
}
