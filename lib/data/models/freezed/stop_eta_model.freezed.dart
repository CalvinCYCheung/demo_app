// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stop_eta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
StopEtaModel _$StopEtaModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'kmb':
      return KMBStopEtaModel.fromJson(json);
    case 'ctb':
      return CTBStopEtaModel.fromJson(json);
    case 'nib':
      return NIBStopEtaModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'StopEtaModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$StopEtaModel {
  /// Serializes this StopEtaModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StopEtaModel);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StopEtaModel()';
  }
}

/// @nodoc
class $StopEtaModelCopyWith<$Res> {
  $StopEtaModelCopyWith(StopEtaModel _, $Res Function(StopEtaModel) __);
}

/// @nodoc
@JsonSerializable()
class KMBStopEtaModel extends StopEtaModel {
  KMBStopEtaModel(
      {required this.co,
      required this.route,
      required this.dir,
      @JsonKey(name: 'service_type') required this.serviceType,
      required this.seq,
      @JsonKey(name: 'dest_tc') required this.destTC,
      @JsonKey(name: 'dest_sc') required this.destSC,
      @JsonKey(name: 'dest_en') required this.destEN,
      this.eta,
      @JsonKey(name: 'rmk_tc') required this.rmkTC,
      @JsonKey(name: 'rmk_sc') required this.rmkSC,
      @JsonKey(name: 'rmk_en') required this.rmkEN,
      @JsonKey(name: 'data_timestamp') required this.dataTimestamp,
      final String? $type})
      : $type = $type ?? 'kmb',
        super._();
  factory KMBStopEtaModel.fromJson(Map<String, dynamic> json) =>
      _$KMBStopEtaModelFromJson(json);

  final String co;
  final String route;
  final String dir;
  @JsonKey(name: 'service_type')
  final int serviceType;
  final int seq;
  @JsonKey(name: 'dest_tc')
  final String destTC;
  @JsonKey(name: 'dest_sc')
  final String destSC;
  @JsonKey(name: 'dest_en')
  final String destEN;
  final String? eta;
  @JsonKey(name: 'rmk_tc')
  final String rmkTC;
  @JsonKey(name: 'rmk_sc')
  final String rmkSC;
  @JsonKey(name: 'rmk_en')
  final String rmkEN;
  @JsonKey(name: 'data_timestamp')
  final String dataTimestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of StopEtaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KMBStopEtaModelCopyWith<KMBStopEtaModel> get copyWith =>
      _$KMBStopEtaModelCopyWithImpl<KMBStopEtaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KMBStopEtaModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KMBStopEtaModel &&
            (identical(other.co, co) || other.co == co) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.dir, dir) || other.dir == dir) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.destTC, destTC) || other.destTC == destTC) &&
            (identical(other.destSC, destSC) || other.destSC == destSC) &&
            (identical(other.destEN, destEN) || other.destEN == destEN) &&
            (identical(other.eta, eta) || other.eta == eta) &&
            (identical(other.rmkTC, rmkTC) || other.rmkTC == rmkTC) &&
            (identical(other.rmkSC, rmkSC) || other.rmkSC == rmkSC) &&
            (identical(other.rmkEN, rmkEN) || other.rmkEN == rmkEN) &&
            (identical(other.dataTimestamp, dataTimestamp) ||
                other.dataTimestamp == dataTimestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, co, route, dir, serviceType, seq,
      destTC, destSC, destEN, eta, rmkTC, rmkSC, rmkEN, dataTimestamp);

  @override
  String toString() {
    return 'StopEtaModel.kmb(co: $co, route: $route, dir: $dir, serviceType: $serviceType, seq: $seq, destTC: $destTC, destSC: $destSC, destEN: $destEN, eta: $eta, rmkTC: $rmkTC, rmkSC: $rmkSC, rmkEN: $rmkEN, dataTimestamp: $dataTimestamp)';
  }
}

/// @nodoc
abstract mixin class $KMBStopEtaModelCopyWith<$Res>
    implements $StopEtaModelCopyWith<$Res> {
  factory $KMBStopEtaModelCopyWith(
          KMBStopEtaModel value, $Res Function(KMBStopEtaModel) _then) =
      _$KMBStopEtaModelCopyWithImpl;
  @useResult
  $Res call(
      {String co,
      String route,
      String dir,
      @JsonKey(name: 'service_type') int serviceType,
      int seq,
      @JsonKey(name: 'dest_tc') String destTC,
      @JsonKey(name: 'dest_sc') String destSC,
      @JsonKey(name: 'dest_en') String destEN,
      String? eta,
      @JsonKey(name: 'rmk_tc') String rmkTC,
      @JsonKey(name: 'rmk_sc') String rmkSC,
      @JsonKey(name: 'rmk_en') String rmkEN,
      @JsonKey(name: 'data_timestamp') String dataTimestamp});
}

/// @nodoc
class _$KMBStopEtaModelCopyWithImpl<$Res>
    implements $KMBStopEtaModelCopyWith<$Res> {
  _$KMBStopEtaModelCopyWithImpl(this._self, this._then);

  final KMBStopEtaModel _self;
  final $Res Function(KMBStopEtaModel) _then;

  /// Create a copy of StopEtaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? co = null,
    Object? route = null,
    Object? dir = null,
    Object? serviceType = null,
    Object? seq = null,
    Object? destTC = null,
    Object? destSC = null,
    Object? destEN = null,
    Object? eta = freezed,
    Object? rmkTC = null,
    Object? rmkSC = null,
    Object? rmkEN = null,
    Object? dataTimestamp = null,
  }) {
    return _then(KMBStopEtaModel(
      co: null == co
          ? _self.co
          : co // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      dir: null == dir
          ? _self.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _self.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int,
      seq: null == seq
          ? _self.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      destTC: null == destTC
          ? _self.destTC
          : destTC // ignore: cast_nullable_to_non_nullable
              as String,
      destSC: null == destSC
          ? _self.destSC
          : destSC // ignore: cast_nullable_to_non_nullable
              as String,
      destEN: null == destEN
          ? _self.destEN
          : destEN // ignore: cast_nullable_to_non_nullable
              as String,
      eta: freezed == eta
          ? _self.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as String?,
      rmkTC: null == rmkTC
          ? _self.rmkTC
          : rmkTC // ignore: cast_nullable_to_non_nullable
              as String,
      rmkSC: null == rmkSC
          ? _self.rmkSC
          : rmkSC // ignore: cast_nullable_to_non_nullable
              as String,
      rmkEN: null == rmkEN
          ? _self.rmkEN
          : rmkEN // ignore: cast_nullable_to_non_nullable
              as String,
      dataTimestamp: null == dataTimestamp
          ? _self.dataTimestamp
          : dataTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CTBStopEtaModel extends StopEtaModel {
  CTBStopEtaModel(
      {required this.co,
      required this.route,
      required this.dir,
      required this.seq,
      required this.stop,
      @JsonKey(name: 'dest_tc') required this.destTC,
      @JsonKey(name: 'dest_sc') required this.destSC,
      @JsonKey(name: 'dest_en') required this.destEN,
      @JsonKey(name: 'eta_seq') required this.etaSeq,
      this.eta,
      @JsonKey(name: 'rmk_tc') required this.rmkTC,
      @JsonKey(name: 'rmk_sc') required this.rmkSC,
      @JsonKey(name: 'rmk_en') required this.rmkEN,
      @JsonKey(name: 'data_timestamp') required this.dataTimestamp,
      final String? $type})
      : $type = $type ?? 'ctb',
        super._();
  factory CTBStopEtaModel.fromJson(Map<String, dynamic> json) =>
      _$CTBStopEtaModelFromJson(json);

  final String co;
  final String route;
  final String dir;
  final int seq;
  final String stop;
  @JsonKey(name: 'dest_tc')
  final String destTC;
  @JsonKey(name: 'dest_sc')
  final String destSC;
  @JsonKey(name: 'dest_en')
  final String destEN;
  @JsonKey(name: 'eta_seq')
  final int etaSeq;
  final String? eta;
  @JsonKey(name: 'rmk_tc')
  final String rmkTC;
  @JsonKey(name: 'rmk_sc')
  final String rmkSC;
  @JsonKey(name: 'rmk_en')
  final String rmkEN;
  @JsonKey(name: 'data_timestamp')
  final String dataTimestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of StopEtaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CTBStopEtaModelCopyWith<CTBStopEtaModel> get copyWith =>
      _$CTBStopEtaModelCopyWithImpl<CTBStopEtaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CTBStopEtaModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CTBStopEtaModel &&
            (identical(other.co, co) || other.co == co) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.dir, dir) || other.dir == dir) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.destTC, destTC) || other.destTC == destTC) &&
            (identical(other.destSC, destSC) || other.destSC == destSC) &&
            (identical(other.destEN, destEN) || other.destEN == destEN) &&
            (identical(other.etaSeq, etaSeq) || other.etaSeq == etaSeq) &&
            (identical(other.eta, eta) || other.eta == eta) &&
            (identical(other.rmkTC, rmkTC) || other.rmkTC == rmkTC) &&
            (identical(other.rmkSC, rmkSC) || other.rmkSC == rmkSC) &&
            (identical(other.rmkEN, rmkEN) || other.rmkEN == rmkEN) &&
            (identical(other.dataTimestamp, dataTimestamp) ||
                other.dataTimestamp == dataTimestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, co, route, dir, seq, stop,
      destTC, destSC, destEN, etaSeq, eta, rmkTC, rmkSC, rmkEN, dataTimestamp);

  @override
  String toString() {
    return 'StopEtaModel.ctb(co: $co, route: $route, dir: $dir, seq: $seq, stop: $stop, destTC: $destTC, destSC: $destSC, destEN: $destEN, etaSeq: $etaSeq, eta: $eta, rmkTC: $rmkTC, rmkSC: $rmkSC, rmkEN: $rmkEN, dataTimestamp: $dataTimestamp)';
  }
}

/// @nodoc
abstract mixin class $CTBStopEtaModelCopyWith<$Res>
    implements $StopEtaModelCopyWith<$Res> {
  factory $CTBStopEtaModelCopyWith(
          CTBStopEtaModel value, $Res Function(CTBStopEtaModel) _then) =
      _$CTBStopEtaModelCopyWithImpl;
  @useResult
  $Res call(
      {String co,
      String route,
      String dir,
      int seq,
      String stop,
      @JsonKey(name: 'dest_tc') String destTC,
      @JsonKey(name: 'dest_sc') String destSC,
      @JsonKey(name: 'dest_en') String destEN,
      @JsonKey(name: 'eta_seq') int etaSeq,
      String? eta,
      @JsonKey(name: 'rmk_tc') String rmkTC,
      @JsonKey(name: 'rmk_sc') String rmkSC,
      @JsonKey(name: 'rmk_en') String rmkEN,
      @JsonKey(name: 'data_timestamp') String dataTimestamp});
}

/// @nodoc
class _$CTBStopEtaModelCopyWithImpl<$Res>
    implements $CTBStopEtaModelCopyWith<$Res> {
  _$CTBStopEtaModelCopyWithImpl(this._self, this._then);

  final CTBStopEtaModel _self;
  final $Res Function(CTBStopEtaModel) _then;

  /// Create a copy of StopEtaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? co = null,
    Object? route = null,
    Object? dir = null,
    Object? seq = null,
    Object? stop = null,
    Object? destTC = null,
    Object? destSC = null,
    Object? destEN = null,
    Object? etaSeq = null,
    Object? eta = freezed,
    Object? rmkTC = null,
    Object? rmkSC = null,
    Object? rmkEN = null,
    Object? dataTimestamp = null,
  }) {
    return _then(CTBStopEtaModel(
      co: null == co
          ? _self.co
          : co // ignore: cast_nullable_to_non_nullable
              as String,
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
      destTC: null == destTC
          ? _self.destTC
          : destTC // ignore: cast_nullable_to_non_nullable
              as String,
      destSC: null == destSC
          ? _self.destSC
          : destSC // ignore: cast_nullable_to_non_nullable
              as String,
      destEN: null == destEN
          ? _self.destEN
          : destEN // ignore: cast_nullable_to_non_nullable
              as String,
      etaSeq: null == etaSeq
          ? _self.etaSeq
          : etaSeq // ignore: cast_nullable_to_non_nullable
              as int,
      eta: freezed == eta
          ? _self.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as String?,
      rmkTC: null == rmkTC
          ? _self.rmkTC
          : rmkTC // ignore: cast_nullable_to_non_nullable
              as String,
      rmkSC: null == rmkSC
          ? _self.rmkSC
          : rmkSC // ignore: cast_nullable_to_non_nullable
              as String,
      rmkEN: null == rmkEN
          ? _self.rmkEN
          : rmkEN // ignore: cast_nullable_to_non_nullable
              as String,
      dataTimestamp: null == dataTimestamp
          ? _self.dataTimestamp
          : dataTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class NIBStopEtaModel extends StopEtaModel {
  NIBStopEtaModel(
      {required this.estimatedArrivalTime,
      required this.routeVariantName,
      required this.departed,
      required this.noGPS,
      required this.wheelChair,
      required this.generateTime,
      final String? $type})
      : $type = $type ?? 'nib',
        super._();
  factory NIBStopEtaModel.fromJson(Map<String, dynamic> json) =>
      _$NIBStopEtaModelFromJson(json);

  final String estimatedArrivalTime;
  final String routeVariantName;
  final String departed;
  final String noGPS;
  final int wheelChair;
  final String generateTime;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of StopEtaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NIBStopEtaModelCopyWith<NIBStopEtaModel> get copyWith =>
      _$NIBStopEtaModelCopyWithImpl<NIBStopEtaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NIBStopEtaModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NIBStopEtaModel &&
            (identical(other.estimatedArrivalTime, estimatedArrivalTime) ||
                other.estimatedArrivalTime == estimatedArrivalTime) &&
            (identical(other.routeVariantName, routeVariantName) ||
                other.routeVariantName == routeVariantName) &&
            (identical(other.departed, departed) ||
                other.departed == departed) &&
            (identical(other.noGPS, noGPS) || other.noGPS == noGPS) &&
            (identical(other.wheelChair, wheelChair) ||
                other.wheelChair == wheelChair) &&
            (identical(other.generateTime, generateTime) ||
                other.generateTime == generateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, estimatedArrivalTime,
      routeVariantName, departed, noGPS, wheelChair, generateTime);

  @override
  String toString() {
    return 'StopEtaModel.nib(estimatedArrivalTime: $estimatedArrivalTime, routeVariantName: $routeVariantName, departed: $departed, noGPS: $noGPS, wheelChair: $wheelChair, generateTime: $generateTime)';
  }
}

/// @nodoc
abstract mixin class $NIBStopEtaModelCopyWith<$Res>
    implements $StopEtaModelCopyWith<$Res> {
  factory $NIBStopEtaModelCopyWith(
          NIBStopEtaModel value, $Res Function(NIBStopEtaModel) _then) =
      _$NIBStopEtaModelCopyWithImpl;
  @useResult
  $Res call(
      {String estimatedArrivalTime,
      String routeVariantName,
      String departed,
      String noGPS,
      int wheelChair,
      String generateTime});
}

/// @nodoc
class _$NIBStopEtaModelCopyWithImpl<$Res>
    implements $NIBStopEtaModelCopyWith<$Res> {
  _$NIBStopEtaModelCopyWithImpl(this._self, this._then);

  final NIBStopEtaModel _self;
  final $Res Function(NIBStopEtaModel) _then;

  /// Create a copy of StopEtaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? estimatedArrivalTime = null,
    Object? routeVariantName = null,
    Object? departed = null,
    Object? noGPS = null,
    Object? wheelChair = null,
    Object? generateTime = null,
  }) {
    return _then(NIBStopEtaModel(
      estimatedArrivalTime: null == estimatedArrivalTime
          ? _self.estimatedArrivalTime
          : estimatedArrivalTime // ignore: cast_nullable_to_non_nullable
              as String,
      routeVariantName: null == routeVariantName
          ? _self.routeVariantName
          : routeVariantName // ignore: cast_nullable_to_non_nullable
              as String,
      departed: null == departed
          ? _self.departed
          : departed // ignore: cast_nullable_to_non_nullable
              as String,
      noGPS: null == noGPS
          ? _self.noGPS
          : noGPS // ignore: cast_nullable_to_non_nullable
              as String,
      wheelChair: null == wheelChair
          ? _self.wheelChair
          : wheelChair // ignore: cast_nullable_to_non_nullable
              as int,
      generateTime: null == generateTime
          ? _self.generateTime
          : generateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
