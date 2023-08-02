import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:imei_scanner/core/local_source/local_source.dart';
import 'package:imei_scanner/core/platform/network_info.dart';
import 'package:imei_scanner/features/main/presentation/bloc/main_bloc.dart';
import 'package:imei_scanner/router/app_routes.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:path_provider/path_provider.dart';

import 'core/app_bloc/app_bloc.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  //External
  await initHive();

  sl
    ..registerLazySingleton(
      () => Dio()
        ..options = BaseOptions(
          contentType: 'application/json',
          sendTimeout: const Duration(seconds: 3),
          receiveTimeout: const Duration(seconds: 30),
          connectTimeout: const Duration(seconds: 30),
          headers: {
            'Authorization': 'API-KEY',
            'X-API-KEY': 'P-pkgsLxf6v25bwhNzgcIDHwjhFd4mzM',
          },
        )
        ..interceptors.addAll(
          [
            LogInterceptor(
              error: kDebugMode,
              request: kDebugMode,
              requestBody: kDebugMode,
              responseBody: kDebugMode,
            ),
            if (kDebugMode) chuck.getDioInterceptor(),
          ],
        ),
    )
    ..registerLazySingleton(InternetConnectionChecker.new)
    //Core
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()))
    ..registerSingleton<LocalSource>(LocalSource(_box))
    ..registerSingleton<AppBloc>(AppBloc());
  // sl<Dio>().interceptors.add(
  /// Features
  // authFeature();
  mainFeature();
}

void mainFeature() {
  sl.registerLazySingleton(MainBloc.new);
}

// void homeFeature() {
//   ///Bloc
//   sl
//     ..registerLazySingleton(
//       () => HomeBloc(
//         getCountryUseCase: sl(),
//         getRequestIdUseCase: sl(),
//         getEtmAutKeyUseCase: sl(),
//         getAirportUseCase: sl(),
//         getPopularLoungesUseCase: sl(),
//         getHallsUseCase: sl(),
//         getLoungeImagesUseCase: sl(),
//         getUserLocationUseCase: sl(),
//       ),
//     )
//
//     ///Usecases
//     ..registerLazySingleton<GetLoungeFeaturesUseCase>(
//       () => GetLoungeFeaturesUseCase(sl()),
//     )
//     ..registerLazySingleton<GetEtmAutKeyUseCase>(
//       () => GetEtmAutKeyUseCase(sl()),
//     )
//     ..registerLazySingleton<GetRequestIdUseCase>(
//       () => GetRequestIdUseCase(sl()),
//     )
//     ..registerLazySingleton<GetCountryUseCase>(
//       () => GetCountryUseCase(sl()),
//     )
//     ..registerLazySingleton<GetPopularLoungesUseCase>(
//       () => GetPopularLoungesUseCase(repository: sl()),
//     )
//     ..registerLazySingleton<GetAirportUseCase>(
//       () => GetAirportUseCase(sl()),
//     )
//     ..registerLazySingleton<GetHallsUseCase>(() => GetHallsUseCase(
//           repository: sl(),
//         ))
//
//     ///booking usecases
//     ..registerLazySingleton<GetLoungeImagesUseCase>(
//         () => GetLoungeImagesUseCase(
//               repository: sl(),
//             ))
//
//     ///searching usecases
//     ..registerLazySingleton<GetLoungesUseCase>(() => GetLoungesUseCase(
//           repository: sl(),
//         ))
//     ..registerLazySingleton<GetAllAirportsUseCase>(
//         () => GetAllAirportsUseCase(sl()))
//     ..registerLazySingleton<GetUserLocationUseCase>(
//         () => GetUserLocationUseCase(repository: sl()))
//
//     ///Repositories
//     ..registerLazySingleton<HomeRepository>(
//       () => HomeRepositoryImpl(
//         localSource: sl(),
//         localDataSource: sl(),
//         homeRemoteDataSource: sl(),
//         networkInfo: sl(),
//       ),
//     )
//
//     /// Data and Network
//     ..registerLazySingleton<HomeRemoteDataSource>(
//       () => HomeRemoteDataSourceImpl(dio: sl()),
//     )
//     ..registerLazySingleton<HomeLocalDataSource>(
//       () => HomeLocalDataSourceImpl(box: _box),
//     );
// }

Future<void> initHive() async {
  const boxName = 'ets_international_mobile_box';
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}

class LogBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      print(change);
    }
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      print('$bloc closed');
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      print('$bloc created');
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      print('${bloc.runtimeType} $event');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      print('${bloc.runtimeType} $error');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      print(transition);
    }
  }
}
