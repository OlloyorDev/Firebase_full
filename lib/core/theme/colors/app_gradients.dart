import 'package:flutter/material.dart';

class ThemeGradients extends ThemeExtension<ThemeGradients> {
  const ThemeGradients();

  static const light =  ThemeGradients();
  static const dark =  ThemeGradients();

  @override
  ThemeExtension<ThemeGradients> copyWith() {
    return ThemeGradients.light;
  }

  @override
  ThemeExtension<ThemeGradients> lerp(
      ThemeExtension<ThemeGradients>? other, double t) {
    if (other is! ThemeGradients) {
      return this;
    }
    return ThemeGradients.light;
  }
}

extension BuildContextZ on BuildContext {
  ThemeGradients get gradients => Theme.of(this).extension<ThemeGradients>()!;
}
