import 'package:dating_app/screens/onboarding/onboarding_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dating_app/screens/screens.dart';

import '../models/models.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case OnboardingScreen.routeName:
        return OnboardingScreen.route();
      case UserScreen.routeName:
        return UserScreen.route(user: settings.arguments as User);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))),
      settings: RouteSettings(name: '/error'),
    );
  }
}