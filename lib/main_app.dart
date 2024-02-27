import 'package:flutter/material.dart';

/// Root widget of the applicaton
class MainApp extends StatelessWidget {
  /// Root widget of the applicaton
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
