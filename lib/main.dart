import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sunday/routes/routes.dart';
import 'package:sunday/sunday.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en'),
    ],
    path: 'assets/langs',
    fallbackLocale: const Locale('en'),
    child: Sunday(
      initRoute: RoutesPage.preloadPage,
    ),
  ));
}
