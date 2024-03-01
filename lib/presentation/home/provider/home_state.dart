// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

/// Dto class representing Home state
class HomeState {
  /// Represents background color for Home
  final Color backgroundColor;

  /// Represents title color for Home
  final Color titleColor;

  final String title;

  final List<InlineSpan> titleSpans;

  /// Dto class representing Home state
  const HomeState({
    required this.backgroundColor,
    required this.titleColor,
    required this.title,
    required this.titleSpans,
  });

  /// Creates standart state
  factory HomeState.initial() {
    return const HomeState(
      backgroundColor: Colors.white,
      titleColor: Colors.black,
      title: 'Hello there 😊',
      titleSpans: [],
    );
  }

  HomeState copyWith({
    Color? backgroundColor,
    Color? titleColor,
    String? title,
    List<InlineSpan>? titleSpans,
  }) {
    return HomeState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      titleColor: titleColor ?? this.titleColor,
      title: title ?? this.title,
      titleSpans: titleSpans ?? this.titleSpans,
    );
  }
}
