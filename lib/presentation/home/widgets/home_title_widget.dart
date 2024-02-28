import 'package:flutter/material.dart';

/// Widget for displaying title on the Home screen
class HomeTitleWidget extends StatefulWidget {
  /// Widget for displaying title on the Home screen
  const HomeTitleWidget({required this.textColor, super.key});

  /// Color for the text
  final Color textColor;

  @override
  State<HomeTitleWidget> createState() => _HomeTitleWidgetState();
}

class _HomeTitleWidgetState extends State<HomeTitleWidget>
    with TickerProviderStateMixin {
  late final AnimationController _animation;

  void _toggleAnimationFromStart() {
    _animation.value = 0;
    _animation.forward();
  }

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _toggleAnimationFromStart();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        final yOffset = -100 + _animation.value * 100;

        return Transform.translate(
          offset: Offset(0, yOffset),
          child: child,
        );
      },
      child: Text(
        'Hello there',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: widget.textColor,
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant HomeTitleWidget oldWidget) {
    _toggleAnimationFromStart();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }
}
