import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:imei_scanner/core/app_bloc/app_bloc.dart';
import 'package:imei_scanner/router/app_routes.dart';
import 'core/locale/app_localization.dart';
import 'core/widgets/keyboard/keyboard_dismisser.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (_, state) {
        return KeyboardDismiss(
          child: MaterialApp(
            navigatorKey: rootNavigatorKey,
            title: 'ETS',
            debugShowCheckedModeBanner: false,
            themeMode: state.themeMode,
            // theme: lightTheme,
            // darkTheme: darkTheme,
            onGenerateRoute: AppRoutes.onGenerateRoute,
            locale: Locale.fromSubtags(
              languageCode: state.appLocale,
            ),
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ru', 'RU'),
              Locale('uz', 'UZ'),
            ],
            localizationsDelegates: const [
              AppLocalization.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
          ),
        );
      },
    );
  }
}
