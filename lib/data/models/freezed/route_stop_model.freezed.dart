// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_stop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
BusRouteStopModel _$BusRouteStopModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'kmb':
      return KMBRouteStopModel.fromJson(json);
    case 'ctb':
      return CTBRouteStopModel.fromJson(json);
    case 'nib':
      return NIBRouteStopModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BusRouteStopModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BusRouteStopModel {
  /// Serializes this BusRouteStopModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BusRouteStopModel);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BusRouteStopModel()';
  }
}

/// @nodoc
class $BusRouteStopModelCopyWith<$Res> {
  $BusRouteStopModelCopyWith(
      BusRouteStopModel _, $Res Function(BusRouteStopModel) __);
}

/// @nodoc
@JsonSerializable()
class KMBRouteStopModel extends BusRouteStopModel {
  KMBRouteStopModel(
      {required this.route,
      required this.bound,
      @JsonKey(name: 'service_type') required this.serviceType,
      required this.seq,
      required this.stop,
      final String? $type})
      : $type = $type ?? 'kmb',
        super._();
  factory KMBRouteStopModel.fromJson(Map<String, dynamic> json) =>
      _$KMBRouteStopModelFromJson(json);

  final String route;
  final String bound;
  @JsonKey(name: 'service_type')
  final String serviceType;
  final String seq;
  final String stop;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BusRouteStopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KMBRouteStopModelCopyWith<KMBRouteStopModel> get copyWith =>
      _$KMBRouteStopModelCopyWithImpl<KMBRouteStopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KMBRouteStopModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KMBRouteStopModel &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.bound, bound) || other.bound == bound) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.stop, stop) || other.stop == stop));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, route, bound, serviceType, seq, stop);

  @override
  String toString() {
    return 'BusRouteStopModel.kmb(route: $route, bound: $bound, serviceType: $serviceType, seq: $seq, stop: $stop)';
  }
}

/// @nodoc
abstract mixin class $KMBRouteStopModelCopyWith<$Res>
    implements $BusRouteStopModelCopyWith<$Res> {
  factory $KMBRouteStopModelCopyWith(
          KMBRouteStopModel value, $Res Function(KMBRouteStopModel) _then) =
      _$KMBRouteStopModelCopyWithImpl;
  @useResult
  $Res call(
      {String route,
      String bound,
      @JsonKey(name: 'service_type') String serviceType,
      String seq,
      String stop});
}

/// @nodoc
class _$KMBRouteStopModelCopyWithImpl<$Res>
    implements $KMBRouteStopModelCopyWith<$Res> {
  _$KMBRouteStopModelCopyWithImpl(this._self, this._then);

  final KMBRouteStopModel _self;
  final $Res Function(KMBRouteStopModel) _then;

  /// Create a copy of BusRouteStopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? route = null,
    Object? bound = null,
    Object? serviceType = null,
    Object? seq = null,
    Object? stop = null,
  }) {
    return _then(KMBRouteStopModel(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      bound: null == bound
          ? _self.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _self.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _self.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as String,
      stop: null == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CTBRouteStopModel extends BusRouteStopModel {
  CTBRouteStopModel(
      {required this.route,
      required this.dir,
      required this.seq,
      required this.stop,
      final String? $type})
      : $type = $type ?? 'ctb',
        super._();
  factory CTBRouteStopModel.fromJson(Map<String, dynamic> json) =>
      _$CTBRouteStopModelFromJson(json);

  final String route;
  final String dir;
  final int seq;
  final String stop;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BusRouteStopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CTBRouteStopModelCopyWith<CTBRouteStopModel> get copyWith =>
      _$CTBRouteStopModelCopyWithImpl<CTBRouteStopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CTBRouteStopModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CTBRouteStopModel &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.dir, dir) || other.dir == dir) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.stop, stop) || other.stop == stop));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, route, dir, seq, stop);

  @override
  String toString() {
    return 'BusRouteStopModel.ctb(route: $route, dir: $dir, seq: $seq, stop: $stop)';
  }
}

/// @nodoc
abstract mixin class $CTBRouteStopModelCopyWith<$Res>
    implements $BusRouteStopModelCopyWith<$Res> {
  factory $CTBRouteStopModelCopyWith(
          CTBRouteStopModel value, $Res Function(CTBRouteStopModel) _then) =
      _$CTBRouteStopModelCopyWithImpl;
  @useResult
  $Res call({String route, String dir, int seq, String stop});
}

/// @nodoc
class _$CTBRouteStopModelCopyWithImpl<$Res>
    implements $CTBRouteStopModelCopyWith<$Res> {
  _$CTBRouteStopModelCopyWithImpl(this._self, this._then);

  final CTBRouteStopModel _self;
  final $Res Function(CTBRouteStopModel) _then;

  /// Create a copy of BusRouteStopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? route = null,
    Object? dir = null,
    Object? seq = null,
    Object? stop = null,
  }) {
    return _then(CTBRouteStopModel(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      dir: null == dir
          ? _self.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _self.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      stop: null == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class NIBRouteStopModel extends BusRouteStopModel {
  NIBRouteStopModel(
      {required this.stopId,
      @JsonKey(name: 'stopName_c') required this.stopNameC,
      @JsonKey(name: 'stopName_s') required this.stopNameS,
      @JsonKey(name: 'stopName_e') required this.stopNameE,
      @JsonKey(name: 'stopLocation_c') required this.stopLocationC,
      @JsonKey(name: 'stopLocation_s') required this.stopLocationS,
      @JsonKey(name: 'stopLocation_e') required this.stopLocationE,
      required this.latitude,
      required this.longitude,
      final String? $type})
      : $type = $type ?? 'nib',
        super._();
  factory NIBRouteStopModel.fromJson(Map<String, dynamic> json) =>
      _$NIBRouteStopModelFromJson(json);

  final String stopId;
  @JsonKey(name: 'stopName_c')
  final String stopNameC;
  @JsonKey(name: 'stopName_s')
  final String stopNameS;
  @JsonKey(name: 'stopName_e')
  final String stopNameE;
  @JsonKey(name: 'stopLocation_c')
  final String stopLocationC;
  @JsonKey(name: 'stopLocation_s')
  final String stopLocationS;
  @JsonKey(name: 'stopLocation_e')
  final String stopLocationE;
  final String latitude;
  final String longitude;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BusRouteStopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NIBRouteStopModelCopyWith<NIBRouteStopModel> get copyWith =>
      _$NIBRouteStopModelCopyWithImpl<NIBRouteStopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NIBRouteStopModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NIBRouteStopModel &&
            (identical(other.stopId, stopId) || other.stopId == stopId) &&
            (identical(other.stopNameC, stopNameC) ||
                other.stopNameC == stopNameC) &&
            (identical(other.stopNameS, stopNameS) ||
                other.stopNameS == stopNameS) &&
            (identical(other.stopNameE, stopNameE) ||
                other.stopNameE == stopNameE) &&
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
      stopNameS,
      stopNameE,
      stopLocationC,
      stopLocationS,
      stopLocationE,
      latitude,
      longitude);

  @override
  String toString() {
    return 'BusRouteStopModel.nib(stopId: $stopId, stopNameC: $stopNameC, stopNameS: $stopNameS, stopNameE: $stopNameE, stopLocationC: $stopLocationC, stopLocationS: $stopLocationS, stopLocationE: $stopLocationE, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $NIBRouteStopModelCopyWith<$Res>
    implements $BusRouteStopModelCopyWith<$Res> {
  factory $NIBRouteStopModelCopyWith(
          NIBRouteStopModel value, $Res Function(NIBRouteStopModel) _then) =
      _$NIBRouteStopModelCopyWithImpl;
  @useResult
  $Res call(
      {String stopId,
      @JsonKey(name: 'stopName_c') String stopNameC,
      @JsonKey(name: 'stopName_s') String stopNameS,
      @JsonKey(name: 'stopName_e') String stopNameE,
      @JsonKey(name: 'stopLocation_c') String stopLocationC,
      @JsonKey(name: 'stopLocation_s') String stopLocationS,
      @JsonKey(name: 'stopLocation_e') String stopLocationE,
      String latitude,
      String longitude});
}

/// @nodoc
class _$NIBRouteStopModelCopyWithImpl<$Res>
    implements $NIBRouteStopModelCopyWith<$Res> {
  _$NIBRouteStopModelCopyWithImpl(this._self, this._then);

  final NIBRouteStopModel _self;
  final $Res Function(NIBRouteStopModel) _then;

  /// Create a copy of BusRouteStopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stopId = null,
    Object? stopNameC = null,
    Object? stopNameS = null,
    Object? stopNameE = null,
    Object? stopLocationC = null,
    Object? stopLocationS = null,
    Object? stopLocationE = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(NIBRouteStopModel(
      stopId: null == stopId
          ? _self.stopId
          : stopId // ignore: cast_nullable_to_non_nullable
              as String,
      stopNameC: null == stopNameC
          ? _self.stopNameC
          : stopNameC // ignore: cast_nullable_to_non_nullable
              as String,
      stopNameS: null == stopNameS
          ? _self.stopNameS
          : stopNameS // ignore: cast_nullable_to_non_nullable
              as String,
      stopNameE: null == stopNameE
          ? _self.stopNameE
          : stopNameE // ignore: cast_nullable_to_non_nullable
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
