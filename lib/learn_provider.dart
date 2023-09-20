import 'package:flutter/material.dart';
import 'package:learn_provider/routes/route_direction.dart';
import 'modules/home/home_screen.dart';

class LearnProvider extends StatelessWidget {
  const LearnProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: RouteDirection.routeMap,
      home: const HomeScreen(),
    );
  }
}
