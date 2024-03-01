import 'package:color_generator/presentation/home/provider/home_provider.dart';
import 'package:color_generator/presentation/home/widgets/color_background_widget.dart';
import 'package:color_generator/presentation/home/widgets/home_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Root widget for Home screen
class HomeScreen extends StatelessWidget {
  /// Root widget for Home screen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: Scaffold(
        body: Consumer<HomeProvider>(
          builder: (context, homeProvider, child) {
            return ColorBackgroundWidget(
              color: homeProvider.currentState.backgroundColor,
              onTap: homeProvider.changeRandomColor,
              child: HomeTitleWidget(
                textSpans: homeProvider.currentState.titleSpans,
              ),
            );
          },
        ),
      ),
    );
  }
}
