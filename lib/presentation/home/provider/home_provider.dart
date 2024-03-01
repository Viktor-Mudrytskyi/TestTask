import 'package:color_generator/core/managers/color_manager.dart';
import 'package:color_generator/presentation/home/provider/home_state.dart';
import 'package:flutter/material.dart';

/// Provider responsible for home screen state
class HomeProvider extends ChangeNotifier {
  static final ColorManager _colorManager = ColorManager();

  HomeState _state = HomeState.initial();

  /// Current state that listeners depend on
  HomeState get currentState => _state;

  /// Provider responsible for home screen state
  HomeProvider() {
    changeRandomColor();
  }

  /// Method that changes color and triggers rebuild of all the listeners
  void changeRandomColor() {
    final Color background = _colorManager.getRandomColor();
    final Color title = _colorManager.getRandomColor();
    final List<InlineSpan> spans = _getSpansFromText();

    _state = _state.copyWith(
      backgroundColor: background,
      titleColor: title,
      titleSpans: spans,
    );
    notifyListeners();
  }

  List<InlineSpan> _getSpansFromText() {
    const double fontSize = 30;
    final List<InlineSpan> spans = [];
    final characters = _parseStringWithEmojis(_state.title);
    for (int i = 0; i < characters.length; i++) {
      final String letter = characters[i];
      spans.add(
        TextSpan(
          text: letter,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            color: _colorManager.getRandomColor(),
          ),
        ),
      );
    }

    return spans;
  }

  List<String> _parseStringWithEmojis(String input) {
    final List<String> result = [];

    for (final char in input.characters) {
      result.add(char);
    }

    return result;
  }
}
