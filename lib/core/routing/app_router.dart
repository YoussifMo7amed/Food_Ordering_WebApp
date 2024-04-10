

import 'package:flutter/material.dart';
import 'package:web_app/core/routing/routers.dart';
import 'package:web_app/features/home/ui/home_screen.dart';

class AppRouter {
  Route generateroutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homescreen:
        return MaterialPageRoute(
          builder: (_) =>const HomeScreen(),
        );
        
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route Defined For $settings.name")),
          ),
        );
    }
  }
}
