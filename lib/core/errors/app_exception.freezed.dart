// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppException {
  String get message;
  String? get errorCode;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<AppException> get copyWith =>
      _$AppExceptionCopyWithImpl<AppException>(
          this as AppException, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode);

  @override
  String toString() {
    return 'AppException(message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) _then) =
      _$AppExceptionCopyWithImpl;
  @useResult
  $Res call({String message, String? errorCode});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res> implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._self, this._then);

  final AppException _self;
  final $Res Function(AppException) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? errorCode = freezed,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class TimeoutException implements AppException, ExceptionBase {
  const TimeoutException({required this.message, this.errorCode});

  @override
  final String message;
  @override
  final String? errorCode;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimeoutExceptionCopyWith<TimeoutException> get copyWith =>
      _$TimeoutExceptionCopyWithImpl<TimeoutException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimeoutException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode);

  @override
  String toString() {
    return 'AppException.timeoutException(message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $TimeoutExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $TimeoutExceptionCopyWith(
          TimeoutException value, $Res Function(TimeoutException) _then) =
      _$TimeoutExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({String message, String? errorCode});
}

/// @nodoc
class _$TimeoutExceptionCopyWithImpl<$Res>
    implements $TimeoutExceptionCopyWith<$Res> {
  _$TimeoutExceptionCopyWithImpl(this._self, this._then);

  final TimeoutException _self;
  final $Res Function(TimeoutException) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? errorCode = freezed,
  }) {
    return _then(TimeoutException(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class NetworkException implements AppException, ExceptionBase {
  const NetworkException({required this.message, this.errorCode});

  @override
  final String message;
  @override
  final String? errorCode;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkExceptionCopyWith<NetworkException> get copyWith =>
      _$NetworkExceptionCopyWithImpl<NetworkException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode);

  @override
  String toString() {
    return 'AppException.networkException(message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $NetworkExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) _then) =
      _$NetworkExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({String message, String? errorCode});
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._self, this._then);

  final NetworkException _self;
  final $Res Function(NetworkException) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? errorCode = freezed,
  }) {
    return _then(NetworkException(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ServerException implements AppException, ExceptionBase {
  const ServerException({required this.message, this.errorCode});

  @override
  final String message;
  @override
  final String? errorCode;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServerExceptionCopyWith<ServerException> get copyWith =>
      _$ServerExceptionCopyWithImpl<ServerException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode);

  @override
  String toString() {
    return 'AppException.serverException(message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $ServerExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(
          ServerException value, $Res Function(ServerException) _then) =
      _$ServerExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({String message, String? errorCode});
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(this._self, this._then);

  final ServerException _self;
  final $Res Function(ServerException) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? errorCode = freezed,
  }) {
    return _then(ServerException(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class GeolocationException implements AppException, ExceptionBase {
  const GeolocationException({required this.message, this.errorCode});

  @override
  final String message;
  @override
  final String? errorCode;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeolocationExceptionCopyWith<GeolocationException> get copyWith =>
      _$GeolocationExceptionCopyWithImpl<GeolocationException>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeolocationException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode);

  @override
  String toString() {
    return 'AppException.geolocationException(message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $GeolocationExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $GeolocationExceptionCopyWith(GeolocationException value,
          $Res Function(GeolocationException) _then) =
      _$GeolocationExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({String message, String? errorCode});
}

/// @nodoc
class _$GeolocationExceptionCopyWithImpl<$Res>
    implements $GeolocationExceptionCopyWith<$Res> {
  _$GeolocationExceptionCopyWithImpl(this._self, this._then);

  final GeolocationException _self;
  final $Res Function(GeolocationException) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? errorCode = freezed,
  }) {
    return _then(GeolocationException(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class CacheException implements AppException, ExceptionBase {
  const CacheException({required this.message, this.errorCode});

  @override
  final String message;
  @override
  final String? errorCode;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CacheExceptionCopyWith<CacheException> get copyWith =>
      _$CacheExceptionCopyWithImpl<CacheException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CacheException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode);

  @override
  String toString() {
    return 'AppException.cacheException(message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $CacheExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $CacheExceptionCopyWith(
          CacheException value, $Res Function(CacheException) _then) =
      _$CacheExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({String message, String? errorCode});
}

/// @nodoc
class _$CacheExceptionCopyWithImpl<$Res>
    implements $CacheExceptionCopyWith<$Res> {
  _$CacheExceptionCopyWithImpl(this._self, this._then);

  final CacheException _self;
  final $Res Function(CacheException) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? errorCode = freezed,
  }) {
    return _then(CacheException(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class UnknownException implements AppException, ExceptionBase {
  const UnknownException({required this.message, this.errorCode});

  @override
  final String message;
  @override
  final String? errorCode;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnknownExceptionCopyWith<UnknownException> get copyWith =>
      _$UnknownExceptionCopyWithImpl<UnknownException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode);

  @override
  String toString() {
    return 'AppException.unknownException(message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $UnknownExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $UnknownExceptionCopyWith(
          UnknownException value, $Res Function(UnknownException) _then) =
      _$UnknownExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({String message, String? errorCode});
}

/// @nodoc
class _$UnknownExceptionCopyWithImpl<$Res>
    implements $UnknownExceptionCopyWith<$Res> {
  _$UnknownExceptionCopyWithImpl(this._self, this._then);

  final UnknownException _self;
  final $Res Function(UnknownException) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? errorCode = freezed,
  }) {
    return _then(UnknownException(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
