import 'package:flutter/material.dart';
import 'package:sunday/routes/router.dart';
import 'package:easy_localization/easy_localization.dart';

class Sunday extends StatelessWidget {
  const Sunday({super.key, required this.initRoute});

  final String initRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunday',
      initialRoute: initRoute,
      onGenerateRoute: RouterGenerator.generateRoute,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
