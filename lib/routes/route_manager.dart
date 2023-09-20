import 'package:flutter/material.dart';
import 'package:learn_provider/routes/route_names.dart';

import 'package:learn_provider/modules/home/home_screen.dart';
import '../modules/favorites/favorites_screen.dart';

class RouteManager {
  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
    RouteNames.HOME_SCREEN: (_) => const HomeScreen(),
    RouteNames.FAVORITES_SCREEN: (_) => const FavoritesScreen(),
  };
}
