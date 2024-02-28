import 'package:color_generator/presentation/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

/// Root widget of the applicaton
class MainApp extends StatelessWidget {
  /// Root widget of the applicaton
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
