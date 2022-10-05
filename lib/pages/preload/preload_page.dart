import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sunday/config/constants/app_prefs.dart';
import 'package:sunday/routes/routes.dart';
import 'dart:async';

class PreloadPage extends StatefulWidget {
  const PreloadPage({super.key});

  @override
  State<PreloadPage> createState() => _PreloadPageState();
}

class _PreloadPageState extends State<PreloadPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), handleTimeout);
  }

  void handleTimeout() {
    getInitRoute().then((route) => Navigator.popAndPushNamed(context, route));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text('Preload'),
      )),
    );
  }

  Future<String> getInitRoute() async {
    var prefs = await SharedPreferences.getInstance();
    String initRoute = RoutesPage.introPage;
    if (prefs.getBool(AppPrefs.introDisplayed) == true) {
      initRoute = RoutesPage.homePage;
    }
    return initRoute;
  }
}
