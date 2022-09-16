import 'package:flutter/material.dart';
import 'package:sunday/pages/home_page.dart';
import 'package:sunday/pages/intro_page.dart';

class RouterGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'Intro':
        return MaterialPageRoute(builder: (_) => const IntroPage());

      case 'Home':
        return MaterialPageRoute(builder: (_) => const HomePage());

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
