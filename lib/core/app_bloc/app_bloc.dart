import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imei_scanner/core/local_source/local_source.dart';
import 'package:imei_scanner/injector_container.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(
          AppState(
            // lightTheme: lightTheme,
            // darkTheme: darkTheme,
            themeMode: ThemeMode.light,
            appLocale: sl<LocalSource>().locale,
          ),
        ) {
    on<AppThemeSwitchLight>(_switchToLightHandler);
    on<AppThemeSwitchDark>(_switchToDarkHandler);
    on<AppChangeLocale>(_changeLocale);
  }

  void _changeLocale(AppChangeLocale event, Emitter<AppState> emit) {
    sl<LocalSource>().setLocale(event.appLocale);
    emit(
      state.copyWith(
        appLocale: event.appLocale,
      ),
    );
  }

  void _switchToLightHandler(
      AppThemeSwitchLight event, Emitter<AppState> emit) {
    emit(
      state.copyWith(
        lightTheme: event.lightTheme,
        themeMode: ThemeMode.light,
      ),
    );
  }

  void _switchToDarkHandler(AppThemeSwitchDark event, Emitter<AppState> emit) {
    emit(
      state.copyWith(
        darkTheme: event.darkTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
