import 'package:flutter/material.dart';
import 'package:sunday/pages/detail_task/detail_task_page.dart';
import 'package:sunday/pages/home/home_page.dart';
import 'package:sunday/pages/intro/intro_page.dart';
import 'package:sunday/pages/preload/preload_page.dart';
import 'package:sunday/routes/routes.dart';

class RouterGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesPage.preloadPage:
        return MaterialPageRoute(builder: (_) => const PreloadPage());

      case RoutesPage.introPage:
        return MaterialPageRoute(builder: (_) => const IntroPage());

      case RoutesPage.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());

      case RoutesPage.detailTaskPage:
        return MaterialPageRoute(builder: (_) => const DetailTaskPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
