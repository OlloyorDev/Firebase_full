import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

extension Translator on String {
  String get tr {
    return AppLocalization.instance.translate(this);
  }
}

class AppLocalization {
  AppLocalization._();

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization) ??
        instance;
  }

  static AppLocalization get instance => AppLocalization._();
  static Map<String, dynamic> _localizedValues = {};

  String translate(String key) {
    if (_localizedValues.isNotEmpty) {
      return _localizedValues[key] ?? '* $key';
    }
    return '';
  }

  static Future<AppLocalization> load(Locale locale) async {
    String jsonContent = await rootBundle.loadString(
      "assets/locale/${locale.languageCode}.json",
    );
    _localizedValues = jsonDecode(jsonContent);

    // Dio dio = Dio();
    // String token = "d933cb36-26c1-4c9a-8440-5f0b643dea2f";
    // final response = await dio.get(
    //   "https://firebasestorage.googleapis.com/v0/b/ets-iternational.appspot.com/o/${locale.languageCode}.json?alt=media&token=$token",
    // );
    // _localizedValues = response.data;
    return instance;
  }

  static const LocalizationsDelegate<AppLocalization> delegate =
      TranslationsDelegate();
}

class TranslationsDelegate extends LocalizationsDelegate<AppLocalization> {
  const TranslationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['ru', 'uz', 'en'].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) async {
    return await SynchronousFuture<AppLocalization>(
      await AppLocalization.load(locale),
    );
  }

  @override
  bool shouldReload(TranslationsDelegate old) => false;
}
