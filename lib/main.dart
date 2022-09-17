import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sunday/config/constants/app_prefs.dart';
import 'package:sunday/routes/routes.dart';
import 'package:sunday/sunday.dart';

Future<String> getInitRoute() async {
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  String initRoute = RoutesPage.introPage;
  if (prefs.getBool(AppPrefs.introDisplayed) == true) {
    initRoute = RoutesPage.homePage;
  }
  return initRoute;
}

void main() {
  getInitRoute().then((nameRoute) => runApp(Sunday(
        initRoute: nameRoute,
      )));
}
