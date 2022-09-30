import 'package:flutter/material.dart';
import 'package:sunday/routes/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sunday/routes/routes.dart';
import 'package:sunday/widgets/menu_bar_widget.dart';

class Sunday extends StatelessWidget {
  const Sunday({super.key, required this.initRoute});

  final String initRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunday',
      home: SundayScreen(initRoute: initRoute),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}

class SundayScreen extends StatefulWidget {
  const SundayScreen({super.key, required this.initRoute});

  final String initRoute;

  @override
  State<SundayScreen> createState() => _SundayScreenState();
}

class _SundayScreenState extends State<SundayScreen> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  bool _useMenu = true;

  @override
  Widget build(BuildContext context) {
    var menuBar = MenuBarWidget(
      currentRoute: widget.initRoute,
      onMenuItemTap: (route) => _navigatorKey.currentState?.pushNamed(route),
    );

    return Scaffold(
      bottomNavigationBar: _useMenu ? menuBar : null,
      body: WillPopScope(
        onWillPop: () async {
          if (_navigatorKey.currentState!.canPop()) {
            _navigatorKey.currentState!.pop();
            return false;
          }
          return true;
        },
        child: Navigator(
          key: _navigatorKey,
          initialRoute: widget.initRoute,
          onGenerateRoute: (settings) {
            if (RoutesPage.routesUseMenu.contains(settings.name)) {
              Future.microtask(() => setState(() => _useMenu = true));
            } else {
              Future.microtask(() => setState(() => _useMenu = false));
            }
            return RouterGenerator.generateRoute(settings);
          },
        ),
      ),
    );
  }
}
