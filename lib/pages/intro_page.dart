import 'package:flutter/material.dart';
import 'package:sunday/generated/l10n.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Text(S.of(context).intro),
        ],
      ),),
    );
  }
}
