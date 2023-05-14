//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/routing/app_pages.dart';

import '../../core/domain/models/svg_path.dart';
import '../../features/all_pages.dart';
import 'routing_error_page.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppPages.initial:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case AppPages.pathDetails:
        final path = settings.arguments as SVGPath?;
        if (path == null) {
          return MaterialPageRoute(
            builder: (_) => RoutingErrorPage(
              route: settings.name,
              error: 'You should provide valid [SVGPath] for this route',
            ),
          );
        }
        return MaterialPageRoute(
          builder: (_) => PathDetails(
            path: settings.arguments as SVGPath,
          ),
        );
      case AppPages.pathDraw:
        return MaterialPageRoute(
          builder: (_) => const DrawView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => RoutingErrorPage(route: settings.name),
        );
    }
  }
}
