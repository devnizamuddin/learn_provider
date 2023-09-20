import 'package:flutter/material.dart';

class RouteTransaction {
  static Future<Object>
      pushReplacementNamed<T extends Object?, TO extends Object?>({
    required BuildContext buildContext,
    required String routeName,
    TO? result,
    Object? arguments,
  }) async {
    return Navigator.pushReplacementNamed(buildContext, routeName,
        result: result, arguments: arguments);
  }

  static Future<Object> pushNamed<T extends Object?, TO extends Object?>({
    required BuildContext buildContext,
    required String routeName,
    TO? result,
    Object? arguments,
  }) async {
    return Navigator.pushNamed(buildContext, routeName, arguments: arguments);
  }
}
