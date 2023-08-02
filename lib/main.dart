import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:imei_scanner/app.dart';
import 'package:imei_scanner/core/app_bloc/app_bloc.dart';
import 'package:imei_scanner/features/main/presentation/bloc/main_bloc.dart';
import 'injector_container.dart' as di;
import 'services/notification_service.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await NotificationService.initialize();

  /// bloc logger
  if (kDebugMode) {
    Bloc.observer = di.LogBlocObserver();
  }
  await di.init();

  /// global CERTIFICATE_VERIFY_FAILEd_KEY
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (_) => di.sl<AppBloc>(),
        ),
        BlocProvider<MainBloc>(
          create: (_) => di.sl<MainBloc>(),
        ),
      ],
      child: const App(),
    );
  }
}

// class DemoLocalizations {
//   DemoLocalizations(this.locale);
//
//   final Locale locale;
//
//   static DemoLocalizations of(BuildContext context) {
//     return Localizations.of<DemoLocalizations>(context, DemoLocalizations)!;
//   }
//
//   static const _localizedValues = <String, Map<String, String>>{
//     'en': {
//       'title': 'Hello World',
//     },
//     'es': {
//       'title': 'Hola Mundo',
//     },
//   };
//
//   static List<String> languages() => _localizedValues.keys.toList();
//
//   String get title {
//     return _localizedValues[locale.languageCode]!['title']!;
//   }
// }

// class DemoLocalizationsDelegate
//     extends LocalizationsDelegate<DemoLocalizations> {
//   const DemoLocalizationsDelegate();
//
//   @override
//   bool isSupported(Locale locale) =>
//       DemoLocalizations.languages().contains(locale.languageCode);
//
//   @override
//   Future<DemoLocalizations> load(Locale locale) {
//     return SynchronousFuture<DemoLocalizations>(DemoLocalizations(locale));
//   }
//
//   @override
//   bool shouldReload(DemoLocalizationsDelegate old) => false;
// }
// flutter pub run flutter_launcher_icons:main
// flutter run -d windows --no-sound-null-safety
// flutter build apk --release --no-sound-null-safety
// flutter build apk --split-per-abi --no-sound-null-safety
// flutter build appbundle --release --no-sound-null-safety
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub ipa
