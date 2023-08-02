part of 'app_bloc.dart';

class AppState extends Equatable {
  final ThemeData? lightTheme;
  final ThemeData? darkTheme;
  final ThemeMode themeMode;
  final String appLocale;

  const AppState({
    required this.appLocale,
    required this.themeMode,
    this.lightTheme,
    this.darkTheme,
  });

  AppState copyWith({
    ThemeData? lightTheme,
    ThemeData? darkTheme,
    ThemeMode? themeMode,
    String? appLocale,
  }) {
    return AppState(
      lightTheme: lightTheme ?? this.lightTheme,
      darkTheme: darkTheme ?? this.darkTheme,
      themeMode: themeMode ?? this.themeMode,
      appLocale: appLocale ?? this.appLocale,
    );
  }

  @override
  List<Object?> get props => [
        lightTheme,
        darkTheme,
        themeMode,
        appLocale,
      ];
}
