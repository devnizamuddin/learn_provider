import 'package:flutter/material.dart';
import 'package:learn_provider/learn_provider.dart';
import 'package:learn_provider/modules/home/home_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: const LearnProvider(),
    ),
  );
}
