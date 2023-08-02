import 'package:imei_scanner/core/either_dart/either.dart';
import 'package:imei_scanner/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}

class CacheParams {
  final bool isCache;

  CacheParams({required this.isCache});
}
