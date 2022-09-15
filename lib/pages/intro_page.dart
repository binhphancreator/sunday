import 'package:flutter/material.dart';
import 'package:sunday/config/themes/app_text_styles.dart';
import 'package:sunday/generated/l10n.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/intro.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              )
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0),
            child: RichText(text: TextSpan(
              style: AppTextStyles.big50,
              children: [
                TextSpan(text: S.of(context).intro_highlight, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: S.of(context).intro_normal),
              ]
            ),),
          ),
        ],
      ),),
    );
  }
}
