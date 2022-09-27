import 'package:flutter/material.dart';
import 'package:sunday/routes/routes.dart';
import 'package:sunday/sunday.dart';

void main() {
  runApp(Sunday(
    initRoute: RoutesPage.preloadPage,
  ));
}
