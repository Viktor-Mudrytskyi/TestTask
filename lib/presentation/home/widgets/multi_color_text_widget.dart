import 'package:flutter/material.dart';

/// Widget that displays inline spans
class MultiColorTextWidget extends StatelessWidget {
  /// Widget that displays inline spans
  const MultiColorTextWidget({
    required this.spans,
    super.key,
  });

  /// Spans to display
  final List<InlineSpan> spans;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: spans,
      ),
    );
  }
}
