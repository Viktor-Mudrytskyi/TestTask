import 'package:flutter/material.dart';

/// Home screen background widget
class ColorBackgroundWidget extends StatelessWidget {
  /// Home screen background widget
  const ColorBackgroundWidget({
    required this.color,
    required this.child,
    this.onTap,
    super.key,
  });

  /// Color used for background
  final Color color;

  /// Callback triggered onTap
  final void Function()? onTap;

  /// Widget to display at the center
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox.expand(
        child: ColoredBox(
          color: color,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
