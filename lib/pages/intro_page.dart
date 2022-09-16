import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sunday/widgets/intro_carosel_widget.dart';

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
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/intro.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              )),
            ),
            SizedBox(
              height: 12,
            ),
            IntroCaroselWidget()
          ],
        ),
      ),
    );
  }
}
