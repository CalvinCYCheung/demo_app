import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

abstract class ExceptionBase implements Exception {
  String? get errorCode;
}

@freezed
sealed class AppException with _$AppException {
  @Implements<ExceptionBase>()
  const factory AppException.timeoutException({
    required String message,
    String? errorCode,
  }) = TimeoutException;
  @Implements<ExceptionBase>()
  const factory AppException.networkException({
    required String message,
    String? errorCode,
  }) = NetworkException;
  @Implements<ExceptionBase>()
  const factory AppException.serverException({
    required String message,
    String? errorCode,
  }) = ServerException;
  @Implements<ExceptionBase>()
  const factory AppException.geolocationException({
    required String message,
    String? errorCode,
  }) = GeolocationException;
  @Implements<ExceptionBase>()
  const factory AppException.cacheException({
    required String message,
    String? errorCode,
  }) = CacheException;
  @Implements<ExceptionBase>()
  const factory AppException.unknownException({
    required String message,
    String? errorCode,
  }) = UnknownException;
}
