// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

/// Dto class representing Home state
class HomeStateDto {
  /// Represents background color for Home
  final Color backgroundColor;

  /// Represents title color for Home
  final Color titleColor;

  /// Dto class representing Home state
  const HomeStateDto({required this.backgroundColor, required this.titleColor});

  /// Creates standart state
  factory HomeStateDto.initial() {
    return const HomeStateDto(
      backgroundColor: Colors.white,
      titleColor: Colors.black,
    );
  }

  HomeStateDto copyWith({
    Color? backgroundColor,
    Color? titleColor,
  }) {
    return HomeStateDto(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      titleColor: titleColor ?? this.titleColor,
    );
  }
}
