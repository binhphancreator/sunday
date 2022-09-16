import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sunday/routes/router.dart';
import 'generated/l10n.dart';

class Sunday extends StatelessWidget {
  const Sunday({super.key, required this.initRoute});

  final String initRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Sunday',
      initialRoute: initRoute,
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
