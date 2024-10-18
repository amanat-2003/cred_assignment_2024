import 'package:cred2024_amanat/core/app_constants.dart';
import 'package:cred2024_amanat/features/pages/view/categories/categorY_grid_page.dart';
import 'package:cred2024_amanat/features/pages/view/categories/categories_list_page.dart';
import 'package:cred2024_amanat/features/pages/view/home_page/home_page.dart';

import 'package:cred2024_amanat/features/loading/view/loading_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(
        builder: (context) => const LoadingPage(),
        settings: settings,
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
        settings: settings,
      );
    case CategoriesListPage.routeName:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CategoriesListPage(),
        transitionDuration: const Duration(milliseconds: animationDuration),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          if (animation.status == AnimationStatus.reverse) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          } else {
            return child;
          }
        },
      );

    case CategoriesGridPage.routeName:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CategoriesGridPage(),
        transitionDuration: const Duration(milliseconds: animationDuration),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          if (animation.status == AnimationStatus.reverse) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          } else {
            return child;
          }
        },
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const CategoriesListPage(),
        settings: settings,
      );
  }
}
