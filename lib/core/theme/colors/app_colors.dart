import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color white;
  final Color black;
  final Color seed;
  final Color surfaceTint;
  final Color surfaceTintColor;
  final Color onErrorContainer;
  final Color onError;
  final Color errorContainer;
  final Color onTertiaryContainer;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color tertiary;
  final Color shadow;
  final Color error;
  final Color outline;
  final Color background;
  final Color inverseOnSurface;
  final Color inverseSurface;
  final Color onSurfaceVariant;
  final Color onSurface;
  final Color onSecondaryContainer;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color secondary;
  final Color inversePrimary;
  final Color onPrimaryContainer;
  final Color onPrimary;
  final Color primaryContainer;
  final Color primary;
  final Color midGray;
  final Color midGray1;
  final Color midGray2;
  final Color darkGray;
  final Color midGray3;
  final Color midGray5;
  final Color fillColor;
  final Color greyForDoughnut;
  final Color titleMiddleColor;
  final Color subTitle;
  final Color secondaryTextColor;
  final Color strockColor;
  final Color midGray6;
  final Color redColor;
  final Color grayTextColor;
  final Color midGray7;
  final Color midGray8;
  final Color k4BB34B;
  final Color k969696;
  final Color kF2271C;
  final Color midOrange;
  final Color countButtonColor;

  const ThemeColors({
    required this.kF2271C,
    required this.k4BB34B,
    required this.k969696,
    required this.midGray8,
    required this.midGray7,
    required this.grayTextColor,
    required this.secondaryTextColor,
    required this.greyForDoughnut,
    required this.white,
    required this.black,
    required this.seed,
    required this.redColor,
    required this.surfaceTint,
    required this.surfaceTintColor,
    required this.onErrorContainer,
    required this.onError,
    required this.errorContainer,
    required this.onTertiaryContainer,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.tertiary,
    required this.shadow,
    required this.error,
    required this.outline,
    required this.background,
    required this.inverseOnSurface,
    required this.inverseSurface,
    required this.onSurfaceVariant,
    required this.onSurface,
    required this.onSecondaryContainer,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.secondary,
    required this.inversePrimary,
    required this.onPrimaryContainer,
    required this.onPrimary,
    required this.primaryContainer,
    required this.primary,
    required this.midGray,
    required this.midGray1,
    required this.darkGray,
    required this.midGray2,
    required this.midGray3,
    required this.fillColor,
    required this.titleMiddleColor,
    required this.subTitle,
    required this.midGray5,
    required this.strockColor,
    required this.midGray6,
    required this.midOrange,
    required this.countButtonColor,
  });

  static const light = ThemeColors(
    kF2271C: Color(0xFFF2271C),
    k969696: Color(0xFF969696),
    k4BB34B: Color(0xFF4BB34B),
    midGray8: Color(0xffE4E5EE),
    midGray7: Color(0xFFF3F4F5),
    grayTextColor: Color(0xFF708393),
    redColor: Color(0xFFDF595B),
    secondaryTextColor: Color(0xFF111126),
    greyForDoughnut: Color(0xff708392),
    primary: Color(0xFF0FB8D3),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    seed: Color(0xFF2787F5),
    surfaceTint: Color(0xFF005EB4),
    surfaceTintColor: Color(0xFF005EB4),
    onErrorContainer: Color(0xFF410002),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onTertiaryContainer: Color(0xFF2C0E37),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFF9D8FF),
    tertiary: Color(0xFF74527E),
    shadow: Color(0xFFEEEEEE),
    error: Color(0xFFBA1A1A),
    outline: Color(0xFF74777F),
    background: Color(0xFFF7F9FC),
    inverseOnSurface: Color(0xFFF1F0F4),
    inverseSurface: Color(0xFF2F3033),
    onSurfaceVariant: Color(0xFFE0E2EC),
    onSurface: Color(0xFFFDFBFF),
    onSecondaryContainer: Color(0xFF0C1C32),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xffF7F9FC),
    secondary: Color(0xff4891F1),
    inversePrimary: Color(0xFFA8C8FF),
    onPrimaryContainer: Color(0xFF001B3C),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD6E3FF),
    midGray: Color(0xFFBDBDBD),
    midGray1: Color(0xFF303940),
    midGray2: Color(0xFFF5F5F5),
    darkGray: Color(0xFF92979B),
    midGray3: Color(0xFFC2C3C5),
    fillColor: Color(0xffF3F3F3),
    titleMiddleColor: Color(0xff252C32),
    subTitle: Color(0xff6E7C87),
    midGray5: Color(0xff48535B),
    strockColor: Color(0xffE7EEF4),
    midGray6: Color(0xFFA0A9B6),
    midOrange: Color(0xFFEE7748),
    countButtonColor: Color(0xFF05A7ED),
  );

  static const dark = ThemeColors(
    kF2271C: Color(0xFFF2271C),
    k969696: Color(0xFF969696),
    k4BB34B: Color(0xFF4BB34B),
    midGray8: Color(0xffE4E5EE),
    midGray7: Color(0xFFF3F4F5),
    grayTextColor: Color(0xFF708393),
    redColor: Color(0xFFDF595B),
    secondaryTextColor: Color(0xFF111126),
    greyForDoughnut: Color(0xff708392),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    seed: Color(0xFF2787F5),
    surfaceTint: Color(0xFFFFFFFF),
    surfaceTintColor: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFFFFFFFF),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFFFFF),
    onTertiaryContainer: Color(0xFFFFFFFF),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFFFFF),
    tertiary: Color(0xFFFFFFFF),
    shadow: Color(0xFFFFFFFF),
    error: Color(0xFFFFFFFF),
    outline: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
    inverseOnSurface: Color(0xFFFFFFFF),
    inverseSurface: Color(0xFFFFFFFF),
    onSurfaceVariant: Color(0xFFFFFFFF),
    onSurface: Color(0xFFFFFFFF),
    onSecondaryContainer: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD6E3FF),
    secondary: Color(0xFF515F78),
    inversePrimary: Color(0xFFFFFFFF),
    onPrimaryContainer: Color(0xFFFFFFFF),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFFFFF),
    primary: Color(0xFFFFFFFF),
    midGray: Color(0xFF9AA6AC),
    midGray1: Color(0xFF5B6871),
    midGray2: Color(0xFFF5F5F5),
    darkGray: Color(0xFF92979B),
    midGray3: Color(0xFFC2C3C5),
    fillColor: Color(0xffF3F3F3),
    titleMiddleColor: Color(0xff252C32),
    subTitle: Color(0xff6E7C87),
    midGray5: Color(0xff48535B),
    strockColor: Color(0xffE7EEF4),
    midGray6: Color(0xFFA0A9B6),
    midOrange: Color(0xFFEE7748),
    countButtonColor: Color(0xFF05A7ED),
  );

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? greyForDoughnut,
    Color? white,
    Color? black,
    Color? seed,
    Color? surfaceTint,
    Color? surfaceTintColor,
    Color? onErrorContainer,
    Color? onError,
    Color? errorContainer,
    Color? onTertiaryContainer,
    Color? onTertiary,
    Color? tertiaryContainer,
    Color? tertiary,
    Color? shadow,
    Color? error,
    Color? outline,
    Color? background,
    Color? inverseOnSurface,
    Color? inverseSurface,
    Color? onSurfaceVariant,
    Color? onSurface,
    Color? onSecondaryContainer,
    Color? onSecondary,
    Color? secondaryContainer,
    Color? secondary,
    Color? inversePrimary,
    Color? onPrimaryContainer,
    Color? onPrimary,
    Color? primaryContainer,
    Color? primary,
    Color? midGray,
    Color? midGray1,
    Color? darkGray,
    Color? midGray2,
    Color? midGray3,
    Color? fillColor,
    Color? titleMiddleColor,
    Color? subTitle,
    Color? midGray5,
    Color? secondaryTextColor,
    Color? strockColor,
    Color? midGray6,
    Color? redColor,
    Color? grayTextColor,
    Color? midGray7,
    Color? midGray8,
    Color? k4BB34B,
    Color? k969696,
    Color? kF2271C,
    Color? midOrange,
    Color? countButtonColor,
  }) {
    return ThemeColors(
      kF2271C: kF2271C ?? this.kF2271C,
      k969696: k969696 ?? this.k969696,
      k4BB34B: k4BB34B ?? this.k4BB34B,
      midGray8: midGray8 ?? this.midGray8,
      midGray7: midGray7 ?? this.midGray7,
      grayTextColor: grayTextColor ?? this.grayTextColor,
      redColor: redColor ?? this.redColor,
      midGray6: midGray6 ?? this.midGray6,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      greyForDoughnut: greyForDoughnut ?? this.greyForDoughnut,
      white: white ?? this.white,
      black: black ?? this.black,
      seed: seed ?? this.seed,
      surfaceTint: surfaceTint ?? this.surfaceTint,
      surfaceTintColor: surfaceTintColor ?? this.surfaceTintColor,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
      onError: onError ?? this.onError,
      errorContainer: errorContainer ?? this.errorContainer,
      onTertiaryContainer: onTertiaryContainer ?? this.onTertiaryContainer,
      onTertiary: onTertiary ?? this.onTertiary,
      tertiaryContainer: tertiaryContainer ?? this.tertiaryContainer,
      tertiary: tertiary ?? this.tertiary,
      shadow: shadow ?? this.shadow,
      error: error ?? this.error,
      outline: outline ?? this.outline,
      background: background ?? this.background,
      inverseOnSurface: inverseOnSurface ?? this.inverseOnSurface,
      inverseSurface: inverseSurface ?? this.inverseSurface,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      onSurface: onSurface ?? this.onSurface,
      onSecondaryContainer: onSecondaryContainer ?? this.onSecondaryContainer,
      onSecondary: onSecondary ?? this.onSecondary,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      secondary: secondary ?? this.secondary,
      inversePrimary: inversePrimary ?? this.inversePrimary,
      onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
      onPrimary: onPrimary ?? this.onPrimary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      primary: primary ?? this.primary,
      midGray: midGray ?? this.midGray,
      midGray1: midGray1 ?? this.midGray1,
      midGray2: midGray2 ?? this.midGray2,
      darkGray: darkGray ?? this.darkGray,
      midGray3: midGray3 ?? this.midGray3,
      fillColor: fillColor ?? this.fillColor,
      titleMiddleColor: titleMiddleColor ?? this.titleMiddleColor,
      subTitle: subTitle ?? this.subTitle,
      midGray5: midGray5 ?? this.midGray5,
      strockColor: strockColor ?? this.strockColor,
      midOrange: midOrange ?? this.midOrange,
      countButtonColor: countButtonColor ?? this.countButtonColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
        kF2271C: Color.lerp(kF2271C, other.kF2271C, t)!,
        k969696: Color.lerp(k969696, other.k969696, t)!,
        k4BB34B: Color.lerp(k4BB34B, other.k4BB34B, t)!,
        midGray8: Color.lerp(midGray8, other.midGray8, t)!,
        midGray7: Color.lerp(midGray7, other.midGray7, t)!,
        grayTextColor: Color.lerp(grayTextColor, other.grayTextColor, t)!,
        redColor: Color.lerp(redColor, other.redColor, t)!,
        midGray6: Color.lerp(midGray6, other.midGray6, t)!,
        secondaryTextColor:
            Color.lerp(secondaryTextColor, other.secondaryTextColor, t)!,
        greyForDoughnut: Color.lerp(greyForDoughnut, other.greyForDoughnut, t)!,
        white: Color.lerp(white, other.white, t)!,
        black: Color.lerp(black, other.black, t)!,
        seed: Color.lerp(seed, other.seed, t)!,
        surfaceTint: Color.lerp(surfaceTint, other.surfaceTint, t)!,
        surfaceTintColor:
            Color.lerp(surfaceTintColor, other.surfaceTintColor, t)!,
        onErrorContainer:
            Color.lerp(onErrorContainer, other.onErrorContainer, t)!,
        onError: Color.lerp(onError, other.onError, t)!,
        errorContainer: Color.lerp(errorContainer, other.errorContainer, t)!,
        onTertiaryContainer:
            Color.lerp(onTertiaryContainer, other.onTertiaryContainer, t)!,
        onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
        tertiaryContainer:
            Color.lerp(tertiaryContainer, other.tertiaryContainer, t)!,
        tertiary: Color.lerp(tertiary, other.tertiary, t)!,
        shadow: Color.lerp(shadow, other.shadow, t)!,
        error: Color.lerp(error, other.error, t)!,
        outline: Color.lerp(outline, other.outline, t)!,
        background: Color.lerp(background, other.background, t)!,
        inverseOnSurface:
            Color.lerp(inverseOnSurface, other.inverseOnSurface, t)!,
        inverseSurface: Color.lerp(inverseSurface, other.inverseSurface, t)!,
        onSurfaceVariant:
            Color.lerp(onSurfaceVariant, other.onSurfaceVariant, t)!,
        onSurface: Color.lerp(onSurface, other.onSurface, t)!,
        onSecondaryContainer:
            Color.lerp(onSecondaryContainer, other.onSecondaryContainer, t)!,
        onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
        secondaryContainer:
            Color.lerp(secondaryContainer, other.secondaryContainer, t)!,
        secondary: Color.lerp(secondary, other.secondary, t)!,
        inversePrimary: Color.lerp(inversePrimary, other.inversePrimary, t)!,
        onPrimaryContainer:
            Color.lerp(onPrimaryContainer, other.onPrimaryContainer, t)!,
        onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
        primaryContainer:
            Color.lerp(primaryContainer, other.primaryContainer, t)!,
        primary: Color.lerp(primary, other.primary, t)!,
        midGray: Color.lerp(midGray, other.midGray, t)!,
        midGray1: Color.lerp(midGray1, other.midGray1, t)!,
        midGray2: Color.lerp(midGray2, other.midGray2, t)!,
        darkGray: Color.lerp(darkGray, other.darkGray, t)!,
        midGray3: Color.lerp(midGray3, other.midGray3, t)!,
        fillColor: Color.lerp(fillColor, other.fillColor, t)!,
        titleMiddleColor:
            Color.lerp(titleMiddleColor, other.titleMiddleColor, t)!,
        subTitle: Color.lerp(subTitle, other.subTitle, t)!,
        midGray5: Color.lerp(midGray5, other.midGray5, t)!,
        strockColor: Color.lerp(strockColor, other.strockColor, t)!,
        midOrange: Color.lerp(midOrange, other.midOrange, t)!,
        countButtonColor:
            Color.lerp(countButtonColor, other.countButtonColor, t)!);
  }
}
