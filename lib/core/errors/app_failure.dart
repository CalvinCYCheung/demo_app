import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

abstract class FailureBase {
  String get message;
  String get errorCode;
}

@freezed
sealed class FailureErrors with _$FailureErrors {
  FailureErrors._();

  @Implements<FailureBase>()
  factory FailureErrors.serverFailure({
    required String message,
    required String errorCode,
  }) = ServerFailure;

  @Implements<FailureBase>()
  factory FailureErrors.cacheFailure({
    required String message,
    required String errorCode,
  }) = CacheFailure;

  @Implements<FailureBase>()
  factory FailureErrors.networkFailure({
    required String message,
    required String errorCode,
  }) = NetworkFailure;

  @Implements<FailureBase>()
  factory FailureErrors.localFailure({
    required String message,
    required String errorCode,
  }) = LocalFailure;

  @Implements<FailureBase>()
  factory FailureErrors.unknownFailure({
    required String message,
    required String errorCode,
  }) = UnknownFailure;

  String get displayError {
    return '$message\n$errorCode';
  }
}
