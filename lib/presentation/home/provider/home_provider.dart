import 'package:color_generator/core/managers/color_manager.dart';
import 'package:color_generator/presentation/home/provider/home_state_dto.dart';
import 'package:flutter/material.dart';

/// Provider responsible for home screen state
class HomeProvider extends ChangeNotifier {
  static final ColorManager _colorManager = ColorManager();

  HomeStateDto _state = HomeStateDto.initial();

  /// Current state that listeners depend on
  HomeStateDto get currentState => _state;

  /// Provider responsible for home screen state
  HomeProvider() {
    changeRandomColor();
  }

  /// Method that changes color and triggers rebuild of all the listeners
  void changeRandomColor() {
    final Color background = _colorManager.getRandomColor();
    final Color title = _colorManager.getTextColorFromBackground(background);

    _state = _state.copyWith(
      backgroundColor: background,
      titleColor: title,
    );
    notifyListeners();
  }
}
