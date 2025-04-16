// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
BusStopModel _$BusStopModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'kmb':
      return KMBStopModel.fromJson(json);
    case 'ctb':
      return CTBStopModel.fromJson(json);
    case 'nib':
      return NIBStopModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BusStopModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BusStopModel {
  /// Serializes this BusStopModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BusStopModel);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BusStopModel()';
  }
}

/// @nodoc
class $BusStopModelCopyWith<$Res> {
  $BusStopModelCopyWith(BusStopModel _, $Res Function(BusStopModel) __);
}

/// @nodoc
@JsonSerializable()
class KMBStopModel implements BusStopModel {
  const KMBStopModel(
      {required this.stop,
      @JsonKey(name: 'name_tc') required this.nameTC,
      @JsonKey(name: 'name_en') required this.nameEN,
      @JsonKey(name: 'name_sc') required this.nameSC,
      required this.lat,
      required this.long,
      final String? $type})
      : $type = $type ?? 'kmb';
  factory KMBStopModel.fromJson(Map<String, dynamic> json) =>
      _$KMBStopModelFromJson(json);

  final String stop;
  @JsonKey(name: 'name_tc')
  final String nameTC;
  @JsonKey(name: 'name_en')
  final String nameEN;
  @JsonKey(name: 'name_sc')
  final String nameSC;
  final String lat;
  final String long;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BusStopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KMBStopModelCopyWith<KMBStopModel> get copyWith =>
      _$KMBStopModelCopyWithImpl<KMBStopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KMBStopModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KMBStopModel &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.nameTC, nameTC) || other.nameTC == nameTC) &&
            (identical(other.nameEN, nameEN) || other.nameEN == nameEN) &&
            (identical(other.nameSC, nameSC) || other.nameSC == nameSC) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stop, nameTC, nameEN, nameSC, lat, long);

  @override
  String toString() {
    return 'BusStopModel.kmb(stop: $stop, nameTC: $nameTC, nameEN: $nameEN, nameSC: $nameSC, lat: $lat, long: $long)';
  }
}

/// @nodoc
abstract mixin class $KMBStopModelCopyWith<$Res>
    implements $BusStopModelCopyWith<$Res> {
  factory $KMBStopModelCopyWith(
          KMBStopModel value, $Res Function(KMBStopModel) _then) =
      _$KMBStopModelCopyWithImpl;
  @useResult
  $Res call(
      {String stop,
      @JsonKey(name: 'name_tc') String nameTC,
      @JsonKey(name: 'name_en') String nameEN,
      @JsonKey(name: 'name_sc') String nameSC,
      String lat,
      String long});
}

/// @nodoc
class _$KMBStopModelCopyWithImpl<$Res> implements $KMBStopModelCopyWith<$Res> {
  _$KMBStopModelCopyWithImpl(this._self, this._then);

  final KMBStopModel _self;
  final $Res Function(KMBStopModel) _then;

  /// Create a copy of BusStopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stop = null,
    Object? nameTC = null,
    Object? nameEN = null,
    Object? nameSC = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(KMBStopModel(
      stop: null == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as String,
      nameTC: null == nameTC
          ? _self.nameTC
          : nameTC // ignore: cast_nullable_to_non_nullable
              as String,
      nameEN: null == nameEN
          ? _self.nameEN
          : nameEN // ignore: cast_nullable_to_non_nullable
              as String,
      nameSC: null == nameSC
          ? _self.nameSC
          : nameSC // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CTBStopModel implements BusStopModel {
  const CTBStopModel(
      {required this.stop,
      @JsonKey(name: 'name_en') required this.nameEN,
      @JsonKey(name: 'name_tc') required this.nameTC,
      @JsonKey(name: 'name_sc') required this.nameSC,
      required this.lat,
      required this.long,
      final String? $type})
      : $type = $type ?? 'ctb';
  factory CTBStopModel.fromJson(Map<String, dynamic> json) =>
      _$CTBStopModelFromJson(json);

  final String stop;
  @JsonKey(name: 'name_en')
  final String nameEN;
  @JsonKey(name: 'name_tc')
  final String nameTC;
  @JsonKey(name: 'name_sc')
  final String nameSC;
  final String lat;
  final String long;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BusStopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CTBStopModelCopyWith<CTBStopModel> get copyWith =>
      _$CTBStopModelCopyWithImpl<CTBStopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CTBStopModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CTBStopModel &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.nameEN, nameEN) || other.nameEN == nameEN) &&
            (identical(other.nameTC, nameTC) || other.nameTC == nameTC) &&
            (identical(other.nameSC, nameSC) || other.nameSC == nameSC) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stop, nameEN, nameTC, nameSC, lat, long);

  @override
  String toString() {
    return 'BusStopModel.ctb(stop: $stop, nameEN: $nameEN, nameTC: $nameTC, nameSC: $nameSC, lat: $lat, long: $long)';
  }
}

/// @nodoc
abstract mixin class $CTBStopModelCopyWith<$Res>
    implements $BusStopModelCopyWith<$Res> {
  factory $CTBStopModelCopyWith(
          CTBStopModel value, $Res Function(CTBStopModel) _then) =
      _$CTBStopModelCopyWithImpl;
  @useResult
  $Res call(
      {String stop,
      @JsonKey(name: 'name_en') String nameEN,
      @JsonKey(name: 'name_tc') String nameTC,
      @JsonKey(name: 'name_sc') String nameSC,
      String lat,
      String long});
}

/// @nodoc
class _$CTBStopModelCopyWithImpl<$Res> implements $CTBStopModelCopyWith<$Res> {
  _$CTBStopModelCopyWithImpl(this._self, this._then);

  final CTBStopModel _self;
  final $Res Function(CTBStopModel) _then;

  /// Create a copy of BusStopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stop = null,
    Object? nameEN = null,
    Object? nameTC = null,
    Object? nameSC = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(CTBStopModel(
      stop: null == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as String,
      nameEN: null == nameEN
          ? _self.nameEN
          : nameEN // ignore: cast_nullable_to_non_nullable
              as String,
      nameTC: null == nameTC
          ? _self.nameTC
          : nameTC // ignore: cast_nullable_to_non_nullable
              as String,
      nameSC: null == nameSC
          ? _self.nameSC
          : nameSC // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class NIBStopModel implements BusStopModel {
  const NIBStopModel(
      {required this.stopId,
      required this.stopNameC,
      required this.stopNameE,
      required this.stopNameS,
      required this.stopLocationC,
      required this.stopLocationS,
      required this.stopLocationE,
      required this.latitude,
      required this.longitude,
      final String? $type})
      : $type = $type ?? 'nib';
  factory NIBStopModel.fromJson(Map<String, dynamic> json) =>
      _$NIBStopModelFromJson(json);

  final String stopId;
  final String stopNameC;
  final String stopNameE;
  final String stopNameS;
  final String stopLocationC;
  final String stopLocationS;
  final String stopLocationE;
  final String latitude;
  final String longitude;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BusStopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NIBStopModelCopyWith<NIBStopModel> get copyWith =>
      _$NIBStopModelCopyWithImpl<NIBStopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NIBStopModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NIBStopModel &&
            (identical(other.stopId, stopId) || other.stopId == stopId) &&
            (identical(other.stopNameC, stopNameC) ||
                other.stopNameC == stopNameC) &&
            (identical(other.stopNameE, stopNameE) ||
                other.stopNameE == stopNameE) &&
            (identical(other.stopNameS, stopNameS) ||
                other.stopNameS == stopNameS) &&
            (identical(other.stopLocationC, stopLocationC) ||
                other.stopLocationC == stopLocationC) &&
            (identical(other.stopLocationS, stopLocationS) ||
                other.stopLocationS == stopLocationS) &&
            (identical(other.stopLocationE, stopLocationE) ||
                other.stopLocationE == stopLocationE) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stopId,
      stopNameC,
      stopNameE,
      stopNameS,
      stopLocationC,
      stopLocationS,
      stopLocationE,
      latitude,
      longitude);

  @override
  String toString() {
    return 'BusStopModel.nib(stopId: $stopId, stopNameC: $stopNameC, stopNameE: $stopNameE, stopNameS: $stopNameS, stopLocationC: $stopLocationC, stopLocationS: $stopLocationS, stopLocationE: $stopLocationE, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $NIBStopModelCopyWith<$Res>
    implements $BusStopModelCopyWith<$Res> {
  factory $NIBStopModelCopyWith(
          NIBStopModel value, $Res Function(NIBStopModel) _then) =
      _$NIBStopModelCopyWithImpl;
  @useResult
  $Res call(
      {String stopId,
      String stopNameC,
      String stopNameE,
      String stopNameS,
      String stopLocationC,
      String stopLocationS,
      String stopLocationE,
      String latitude,
      String longitude});
}

/// @nodoc
class _$NIBStopModelCopyWithImpl<$Res> implements $NIBStopModelCopyWith<$Res> {
  _$NIBStopModelCopyWithImpl(this._self, this._then);

  final NIBStopModel _self;
  final $Res Function(NIBStopModel) _then;

  /// Create a copy of BusStopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stopId = null,
    Object? stopNameC = null,
    Object? stopNameE = null,
    Object? stopNameS = null,
    Object? stopLocationC = null,
    Object? stopLocationS = null,
    Object? stopLocationE = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(NIBStopModel(
      stopId: null == stopId
          ? _self.stopId
          : stopId // ignore: cast_nullable_to_non_nullable
              as String,
      stopNameC: null == stopNameC
          ? _self.stopNameC
          : stopNameC // ignore: cast_nullable_to_non_nullable
              as String,
      stopNameE: null == stopNameE
          ? _self.stopNameE
          : stopNameE // ignore: cast_nullable_to_non_nullable
              as String,
      stopNameS: null == stopNameS
          ? _self.stopNameS
          : stopNameS // ignore: cast_nullable_to_non_nullable
              as String,
      stopLocationC: null == stopLocationC
          ? _self.stopLocationC
          : stopLocationC // ignore: cast_nullable_to_non_nullable
              as String,
      stopLocationS: null == stopLocationS
          ? _self.stopLocationS
          : stopLocationS // ignore: cast_nullable_to_non_nullable
              as String,
      stopLocationE: null == stopLocationE
          ? _self.stopLocationE
          : stopLocationE // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
