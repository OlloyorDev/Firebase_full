import 'dart:io';

import 'package:intl/intl.dart';

class BaseFunctions {
  BaseFunctions._();

  static String moneyFormat(num number) {
    final isNegative = number.isNegative;
    num number2 = number.abs();
    String result = '0';
    result = NumberFormat().format(number2).split(',').join(' ');
    return isNegative ? '-$result' : result;
  }

  static String moneyFormatSymbol(num number) {
    final isNegative = number.isNegative;
    num number2 = number.abs();
    String result = '0';
    result = NumberFormat().format(number2).split(',').join(' ');
    return "${isNegative ? "-$result" : result} ${"sum"}";
  }

  static String getDefaultLocale() {
    final String defaultSystemLocale = Platform.localeName;
    switch (defaultSystemLocale.split('_').first) {
      case 'ru':
        return 'ru';
      case 'en':
        return 'en';
      case 'uz':
        return 'uz';
      default:
        return 'ru';
    }
  }

  static String dateFormatter(String str) {
    DateTime date = DateFormat('yyyy-MM-dd HH:mm:ss').parse(str);
    return DateFormat('dd.MM.yyyy').format(date);
  }

  static String timeFormatter(String str) {
    DateTime date = DateFormat('yyyy-MM-dd HH:mm:ss').parse(str);
    return DateFormat('HH:mm').format(date);
  }

  static String addressFormatter(String address) {
    String finished = address.replaceAll('ʻ', "'");
    return finished;
  }
}
