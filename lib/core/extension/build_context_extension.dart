import 'package:flutter/material.dart';
import 'package:imei_scanner/core/locale/app_localization.dart';
import 'package:imei_scanner/core/theme/app_text_style.dart';
import 'package:imei_scanner/core/theme/colors/app_colors.dart';

extension BuildContextExt on BuildContext {
  String translate(String key) => AppLocalization.of(this).translate(key);

  Locale get locale => Localizations.localeOf(this);

  ThemeData get theme => Theme.of(this);

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;

  AppTextStyles get textStyle => Theme.of(this).extension<AppTextStyles>()!;
}
