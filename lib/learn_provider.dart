import 'package:flutter/material.dart';
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
      home: const HomeScreen(),
    );
  }
}
