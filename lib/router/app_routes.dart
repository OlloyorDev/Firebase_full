import 'package:chuck_interceptor/chuck.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imei_scanner/core/local_source/local_source.dart';
import 'package:imei_scanner/features/main/presentation/pages/main_page.dart';
import 'package:imei_scanner/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:imei_scanner/features/splash/presentation/pages/splash_page.dart';
import 'package:imei_scanner/injector_container.dart';
import 'package:imei_scanner/router/name_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final localSource = sl<LocalSource>();
final Chuck chuck = Chuck(
  showNotification: true,
  showInspectorOnShake: false,
  darkTheme: false,
  navigatorKey: rootNavigatorKey,
);

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      print('route : ${settings.name}');
    }
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => SplashBloc(),
            child: const SplashPage(),
          ),
        );
      case Routes.main:
        return MaterialPageRoute(
          builder: (_) => const MainPage(),
        );
    }
    return null;
  }
}

// PageRouteBuilder buildPageWithDefaultTransition<T>({required Widget child}) {
//   return PageRouteBuilder<T>(
//     pageBuilder: (_, __, ___) => child,
//     transitionsBuilder: (
//       context,
//       animation,
//       secondaryAnimation,
//       child,
//     ) =>
//         FadeTransition(
//       opacity: animation,
//       child: child,
//     ),
//   );
// }
