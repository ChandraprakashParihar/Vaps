import 'package:flutter/material.dart';
import 'package:vaps/screens/nav_screen.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavScreen.routeName:
        return MaterialPageRoute(builder: (context) => const NavScreen());

      default:
        null;
    }
  }
}
