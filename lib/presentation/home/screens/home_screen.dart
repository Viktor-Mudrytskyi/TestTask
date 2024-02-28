import 'package:color_generator/presentation/home/widgets/color_background_widget.dart';
import 'package:color_generator/presentation/home/widgets/home_title_widget.dart';
import 'package:flutter/material.dart';

/// Root widget for Home screen
class HomeScreen extends StatelessWidget {
  /// Root widget for Home screen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ColorBackgroundWidget(
        color: Colors.pink,
        child: HomeTitleWidget(),
      ),
    );
  }
}
