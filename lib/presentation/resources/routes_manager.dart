import 'package:flutter/material.dart';

import 'strings_manager.dart';

class AppRoutes {
  static const String loginScreenRoute = '/login';
}

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginScreenRoute:
      // return CupertinoPageRoute(
      //     builder: (_) => const LoginScreen(), settings: settings);

      default:
        return null;
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
            // title: Text(AppStrings.noRouteFound),
            ),
        body: const Center(
            // child: Text(AppStrings.noRouteFound),
            ),
      ),
    );
  }
}
