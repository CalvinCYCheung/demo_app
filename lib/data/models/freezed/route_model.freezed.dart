// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
BusRouteModel _$BusRouteModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'kmb':
      return KMB.fromJson(json);
    case 'ctb':
      return CTB.fromJson(json);
    case 'nib':
      return NIB.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BusRouteModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BusRouteModel {
  /// Serializes this BusRouteModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BusRouteModel);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BusRouteModel()';
  }
}

/// @nodoc
class $BusRouteModelCopyWith<$Res> {
  $BusRouteModelCopyWith(BusRouteModel _, $Res Function(BusRouteModel) __);
}

/// @nodoc
@JsonSerializable()
class KMB extends BusRouteModel {
  const KMB(
      {required this.route,
      required this.bound,
      @JsonKey(name: 'orig_en') required this.origEN,
      @JsonKey(name: 'orig_tc') required this.origTC,
      @JsonKey(name: 'orig_sc') required this.origSC,
      @JsonKey(name: 'dest_en') required this.destEN,
      @JsonKey(name: 'dest_tc') required this.destTC,
      @JsonKey(name: 'dest_sc') required this.destSC,
      final String? $type})
      : $type = $type ?? 'kmb',
        super._();
  factory KMB.fromJson(Map<String, dynamic> json) => _$KMBFromJson(json);

  final String route;
  final String bound;
  @JsonKey(name: 'orig_en')
  final String origEN;
  @JsonKey(name: 'orig_tc')
  final String origTC;
  @JsonKey(name: 'orig_sc')
  final String origSC;
  @JsonKey(name: 'dest_en')
  final String destEN;
  @JsonKey(name: 'dest_tc')
  final String destTC;
  @JsonKey(name: 'dest_sc')
  final String destSC;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BusRouteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KMBCopyWith<KMB> get copyWith => _$KMBCopyWithImpl<KMB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KMBToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KMB &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.bound, bound) || other.bound == bound) &&
            (identical(other.origEN, origEN) || other.origEN == origEN) &&
            (identical(other.origTC, origTC) || other.origTC == origTC) &&
            (identical(other.origSC, origSC) || other.origSC == origSC) &&
            (identical(other.destEN, destEN) || other.destEN == destEN) &&
            (identical(other.destTC, destTC) || other.destTC == destTC) &&
            (identical(other.destSC, destSC) || other.destSC == destSC));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, route, bound, origEN, origTC,
      origSC, destEN, destTC, destSC);

  @override
  String toString() {
    return 'BusRouteModel.kmb(route: $route, bound: $bound, origEN: $origEN, origTC: $origTC, origSC: $origSC, destEN: $destEN, destTC: $destTC, destSC: $destSC)';
  }
}

/// @nodoc
abstract mixin class $KMBCopyWith<$Res>
    implements $BusRouteModelCopyWith<$Res> {
  factory $KMBCopyWith(KMB value, $Res Function(KMB) _then) = _$KMBCopyWithImpl;
  @useResult
  $Res call(
      {String route,
      String bound,
      @JsonKey(name: 'orig_en') String origEN,
      @JsonKey(name: 'orig_tc') String origTC,
      @JsonKey(name: 'orig_sc') String origSC,
      @JsonKey(name: 'dest_en') String destEN,
      @JsonKey(name: 'dest_tc') String destTC,
      @JsonKey(name: 'dest_sc') String destSC});
}

/// @nodoc
class _$KMBCopyWithImpl<$Res> implements $KMBCopyWith<$Res> {
  _$KMBCopyWithImpl(this._self, this._then);

  final KMB _self;
  final $Res Function(KMB) _then;

  /// Create a copy of BusRouteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? route = null,
    Object? bound = null,
    Object? origEN = null,
    Object? origTC = null,
    Object? origSC = null,
    Object? destEN = null,
    Object? destTC = null,
    Object? destSC = null,
  }) {
    return _then(KMB(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      bound: null == bound
          ? _self.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as String,
      origEN: null == origEN
          ? _self.origEN
          : origEN // ignore: cast_nullable_to_non_nullable
              as String,
      origTC: null == origTC
          ? _self.origTC
          : origTC // ignore: cast_nullable_to_non_nullable
              as String,
      origSC: null == origSC
          ? _self.origSC
          : origSC // ignore: cast_nullable_to_non_nullable
              as String,
      destEN: null == destEN
          ? _self.destEN
          : destEN // ignore: cast_nullable_to_non_nullable
              as String,
      destTC: null == destTC
          ? _self.destTC
          : destTC // ignore: cast_nullable_to_non_nullable
              as String,
      destSC: null == destSC
          ? _self.destSC
          : destSC // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CTB extends BusRouteModel {
  const CTB(
      {required this.route,
      this.bound = 'I',
      @JsonKey(name: 'orig_tc') required this.origTC,
      @JsonKey(name: 'orig_en') required this.origEN,
      @JsonKey(name: 'dest_tc') required this.destTC,
      @JsonKey(name: 'dest_en') required this.destEN,
      @JsonKey(name: 'orig_sc') required this.origSC,
      @JsonKey(name: 'dest_sc') required this.destSC,
      final String? $type})
      : $type = $type ?? 'ctb',
        super._();
  factory CTB.fromJson(Map<String, dynamic> json) => _$CTBFromJson(json);

  final String route;
  @JsonKey()
  final String bound;
  @JsonKey(name: 'orig_tc')
  final String origTC;
  @JsonKey(name: 'orig_en')
  final String origEN;
  @JsonKey(name: 'dest_tc')
  final String destTC;
  @JsonKey(name: 'dest_en')
  final String destEN;
  @JsonKey(name: 'orig_sc')
  final String origSC;
  @JsonKey(name: 'dest_sc')
  final String destSC;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BusRouteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CTBCopyWith<CTB> get copyWith => _$CTBCopyWithImpl<CTB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CTBToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CTB &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.bound, bound) || other.bound == bound) &&
            (identical(other.origTC, origTC) || other.origTC == origTC) &&
            (identical(other.origEN, origEN) || other.origEN == origEN) &&
            (identical(other.destTC, destTC) || other.destTC == destTC) &&
            (identical(other.destEN, destEN) || other.destEN == destEN) &&
            (identical(other.origSC, origSC) || other.origSC == origSC) &&
            (identical(other.destSC, destSC) || other.destSC == destSC));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, route, bound, origTC, origEN,
      destTC, destEN, origSC, destSC);

  @override
  String toString() {
    return 'BusRouteModel.ctb(route: $route, bound: $bound, origTC: $origTC, origEN: $origEN, destTC: $destTC, destEN: $destEN, origSC: $origSC, destSC: $destSC)';
  }
}

/// @nodoc
abstract mixin class $CTBCopyWith<$Res>
    implements $BusRouteModelCopyWith<$Res> {
  factory $CTBCopyWith(CTB value, $Res Function(CTB) _then) = _$CTBCopyWithImpl;
  @useResult
  $Res call(
      {String route,
      String bound,
      @JsonKey(name: 'orig_tc') String origTC,
      @JsonKey(name: 'orig_en') String origEN,
      @JsonKey(name: 'dest_tc') String destTC,
      @JsonKey(name: 'dest_en') String destEN,
      @JsonKey(name: 'orig_sc') String origSC,
      @JsonKey(name: 'dest_sc') String destSC});
}

/// @nodoc
class _$CTBCopyWithImpl<$Res> implements $CTBCopyWith<$Res> {
  _$CTBCopyWithImpl(this._self, this._then);

  final CTB _self;
  final $Res Function(CTB) _then;

  /// Create a copy of BusRouteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? route = null,
    Object? bound = null,
    Object? origTC = null,
    Object? origEN = null,
    Object? destTC = null,
    Object? destEN = null,
    Object? origSC = null,
    Object? destSC = null,
  }) {
    return _then(CTB(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      bound: null == bound
          ? _self.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as String,
      origTC: null == origTC
          ? _self.origTC
          : origTC // ignore: cast_nullable_to_non_nullable
              as String,
      origEN: null == origEN
          ? _self.origEN
          : origEN // ignore: cast_nullable_to_non_nullable
              as String,
      destTC: null == destTC
          ? _self.destTC
          : destTC // ignore: cast_nullable_to_non_nullable
              as String,
      destEN: null == destEN
          ? _self.destEN
          : destEN // ignore: cast_nullable_to_non_nullable
              as String,
      origSC: null == origSC
          ? _self.origSC
          : origSC // ignore: cast_nullable_to_non_nullable
              as String,
      destSC: null == destSC
          ? _self.destSC
          : destSC // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class NIB extends BusRouteModel {
  const NIB(
      {required this.routeId,
      required this.routeNo,
      @JsonKey(name: 'routeName_c') required this.routeNameC,
      @JsonKey(name: 'routeName_s') required this.routeNameS,
      @JsonKey(name: 'routeName_e') required this.routeNameE,
      required this.overnightRoute,
      required this.specialRoute,
      final String? $type})
      : $type = $type ?? 'nib',
        super._();
  factory NIB.fromJson(Map<String, dynamic> json) => _$NIBFromJson(json);

  final String routeId;
  final String routeNo;
  @JsonKey(name: 'routeName_c')
  final String routeNameC;
  @JsonKey(name: 'routeName_s')
  final String routeNameS;
  @JsonKey(name: 'routeName_e')
  final String routeNameE;
  final int overnightRoute;
  final int specialRoute;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BusRouteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NIBCopyWith<NIB> get copyWith => _$NIBCopyWithImpl<NIB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NIBToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NIB &&
            (identical(other.routeId, routeId) || other.routeId == routeId) &&
            (identical(other.routeNo, routeNo) || other.routeNo == routeNo) &&
            (identical(other.routeNameC, routeNameC) ||
                other.routeNameC == routeNameC) &&
            (identical(other.routeNameS, routeNameS) ||
                other.routeNameS == routeNameS) &&
            (identical(other.routeNameE, routeNameE) ||
                other.routeNameE == routeNameE) &&
            (identical(other.overnightRoute, overnightRoute) ||
                other.overnightRoute == overnightRoute) &&
            (identical(other.specialRoute, specialRoute) ||
                other.specialRoute == specialRoute));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routeId, routeNo, routeNameC,
      routeNameS, routeNameE, overnightRoute, specialRoute);

  @override
  String toString() {
    return 'BusRouteModel.nib(routeId: $routeId, routeNo: $routeNo, routeNameC: $routeNameC, routeNameS: $routeNameS, routeNameE: $routeNameE, overnightRoute: $overnightRoute, specialRoute: $specialRoute)';
  }
}

/// @nodoc
abstract mixin class $NIBCopyWith<$Res>
    implements $BusRouteModelCopyWith<$Res> {
  factory $NIBCopyWith(NIB value, $Res Function(NIB) _then) = _$NIBCopyWithImpl;
  @useResult
  $Res call(
      {String routeId,
      String routeNo,
      @JsonKey(name: 'routeName_c') String routeNameC,
      @JsonKey(name: 'routeName_s') String routeNameS,
      @JsonKey(name: 'routeName_e') String routeNameE,
      int overnightRoute,
      int specialRoute});
}

/// @nodoc
class _$NIBCopyWithImpl<$Res> implements $NIBCopyWith<$Res> {
  _$NIBCopyWithImpl(this._self, this._then);

  final NIB _self;
  final $Res Function(NIB) _then;

  /// Create a copy of BusRouteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeId = null,
    Object? routeNo = null,
    Object? routeNameC = null,
    Object? routeNameS = null,
    Object? routeNameE = null,
    Object? overnightRoute = null,
    Object? specialRoute = null,
  }) {
    return _then(NIB(
      routeId: null == routeId
          ? _self.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String,
      routeNo: null == routeNo
          ? _self.routeNo
          : routeNo // ignore: cast_nullable_to_non_nullable
              as String,
      routeNameC: null == routeNameC
          ? _self.routeNameC
          : routeNameC // ignore: cast_nullable_to_non_nullable
              as String,
      routeNameS: null == routeNameS
          ? _self.routeNameS
          : routeNameS // ignore: cast_nullable_to_non_nullable
              as String,
      routeNameE: null == routeNameE
          ? _self.routeNameE
          : routeNameE // ignore: cast_nullable_to_non_nullable
              as String,
      overnightRoute: null == overnightRoute
          ? _self.overnightRoute
          : overnightRoute // ignore: cast_nullable_to_non_nullable
              as int,
      specialRoute: null == specialRoute
          ? _self.specialRoute
          : specialRoute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
