// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus_route_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
BusRoute _$BusRouteFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'kmb':
      return KMBRoute.fromJson(json);
    case 'ctb':
      return CTBRoute.fromJson(json);
    case 'nib':
      return NIBRoute.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BusRoute',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BusRoute {
  /// Serializes this BusRoute to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BusRoute);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BusRoute()';
  }
}

/// @nodoc
class $BusRouteCopyWith<$Res> {
  $BusRouteCopyWith(BusRoute _, $Res Function(BusRoute) __);
}

/// @nodoc
@JsonSerializable()
class KMBRoute extends BusRoute {
  KMBRoute(
      this.route,
      this.bound,
      @JsonKey(name: 'orig_en') this.origEN,
      @JsonKey(name: 'orig_tc') this.origTC,
      @JsonKey(name: 'orig_sc') this.origSC,
      @JsonKey(name: 'dest_en') this.destEN,
      @JsonKey(name: 'dest_tc') this.destTC,
      @JsonKey(name: 'dest_sc') this.destSC,
      {final String? $type})
      : $type = $type ?? 'kmb',
        super._();
  factory KMBRoute.fromJson(Map<String, dynamic> json) =>
      _$KMBRouteFromJson(json);

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

  /// Create a copy of BusRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KMBRouteCopyWith<KMBRoute> get copyWith =>
      _$KMBRouteCopyWithImpl<KMBRoute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KMBRouteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KMBRoute &&
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
    return 'BusRoute.kmb(route: $route, bound: $bound, origEN: $origEN, origTC: $origTC, origSC: $origSC, destEN: $destEN, destTC: $destTC, destSC: $destSC)';
  }
}

/// @nodoc
abstract mixin class $KMBRouteCopyWith<$Res>
    implements $BusRouteCopyWith<$Res> {
  factory $KMBRouteCopyWith(KMBRoute value, $Res Function(KMBRoute) _then) =
      _$KMBRouteCopyWithImpl;
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
class _$KMBRouteCopyWithImpl<$Res> implements $KMBRouteCopyWith<$Res> {
  _$KMBRouteCopyWithImpl(this._self, this._then);

  final KMBRoute _self;
  final $Res Function(KMBRoute) _then;

  /// Create a copy of BusRoute
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
    return _then(KMBRoute(
      null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      null == bound
          ? _self.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as String,
      null == origEN
          ? _self.origEN
          : origEN // ignore: cast_nullable_to_non_nullable
              as String,
      null == origTC
          ? _self.origTC
          : origTC // ignore: cast_nullable_to_non_nullable
              as String,
      null == origSC
          ? _self.origSC
          : origSC // ignore: cast_nullable_to_non_nullable
              as String,
      null == destEN
          ? _self.destEN
          : destEN // ignore: cast_nullable_to_non_nullable
              as String,
      null == destTC
          ? _self.destTC
          : destTC // ignore: cast_nullable_to_non_nullable
              as String,
      null == destSC
          ? _self.destSC
          : destSC // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CTBRoute extends BusRoute {
  CTBRoute(
      this.route,
      this.bound,
      @JsonKey(name: 'orig_tc') this.origTC,
      @JsonKey(name: 'orig_en') this.origEN,
      @JsonKey(name: 'dest_tc') this.destTC,
      @JsonKey(name: 'dest_en') this.destEN,
      @JsonKey(name: 'orig_sc') this.origSC,
      @JsonKey(name: 'dest_sc') this.destSC,
      {final String? $type})
      : $type = $type ?? 'ctb',
        super._();
  factory CTBRoute.fromJson(Map<String, dynamic> json) =>
      _$CTBRouteFromJson(json);

  final String route;
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

  /// Create a copy of BusRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CTBRouteCopyWith<CTBRoute> get copyWith =>
      _$CTBRouteCopyWithImpl<CTBRoute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CTBRouteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CTBRoute &&
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
    return 'BusRoute.ctb(route: $route, bound: $bound, origTC: $origTC, origEN: $origEN, destTC: $destTC, destEN: $destEN, origSC: $origSC, destSC: $destSC)';
  }
}

/// @nodoc
abstract mixin class $CTBRouteCopyWith<$Res>
    implements $BusRouteCopyWith<$Res> {
  factory $CTBRouteCopyWith(CTBRoute value, $Res Function(CTBRoute) _then) =
      _$CTBRouteCopyWithImpl;
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
class _$CTBRouteCopyWithImpl<$Res> implements $CTBRouteCopyWith<$Res> {
  _$CTBRouteCopyWithImpl(this._self, this._then);

  final CTBRoute _self;
  final $Res Function(CTBRoute) _then;

  /// Create a copy of BusRoute
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
    return _then(CTBRoute(
      null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      null == bound
          ? _self.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as String,
      null == origTC
          ? _self.origTC
          : origTC // ignore: cast_nullable_to_non_nullable
              as String,
      null == origEN
          ? _self.origEN
          : origEN // ignore: cast_nullable_to_non_nullable
              as String,
      null == destTC
          ? _self.destTC
          : destTC // ignore: cast_nullable_to_non_nullable
              as String,
      null == destEN
          ? _self.destEN
          : destEN // ignore: cast_nullable_to_non_nullable
              as String,
      null == origSC
          ? _self.origSC
          : origSC // ignore: cast_nullable_to_non_nullable
              as String,
      null == destSC
          ? _self.destSC
          : destSC // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class NIBRoute extends BusRoute {
  NIBRoute(
      this.routeId,
      this.routeNo,
      @JsonKey(name: 'routeName_c') this.routeNameC,
      @JsonKey(name: 'routeName_s') this.routeNameS,
      @JsonKey(name: 'routeName_e') this.routeNameE,
      this.overnightRoute,
      this.specialRoute,
      {final String? $type})
      : $type = $type ?? 'nib',
        super._();
  factory NIBRoute.fromJson(Map<String, dynamic> json) =>
      _$NIBRouteFromJson(json);

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

  /// Create a copy of BusRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NIBRouteCopyWith<NIBRoute> get copyWith =>
      _$NIBRouteCopyWithImpl<NIBRoute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NIBRouteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NIBRoute &&
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
    return 'BusRoute.nib(routeId: $routeId, routeNo: $routeNo, routeNameC: $routeNameC, routeNameS: $routeNameS, routeNameE: $routeNameE, overnightRoute: $overnightRoute, specialRoute: $specialRoute)';
  }
}

/// @nodoc
abstract mixin class $NIBRouteCopyWith<$Res>
    implements $BusRouteCopyWith<$Res> {
  factory $NIBRouteCopyWith(NIBRoute value, $Res Function(NIBRoute) _then) =
      _$NIBRouteCopyWithImpl;
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
class _$NIBRouteCopyWithImpl<$Res> implements $NIBRouteCopyWith<$Res> {
  _$NIBRouteCopyWithImpl(this._self, this._then);

  final NIBRoute _self;
  final $Res Function(NIBRoute) _then;

  /// Create a copy of BusRoute
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
    return _then(NIBRoute(
      null == routeId
          ? _self.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String,
      null == routeNo
          ? _self.routeNo
          : routeNo // ignore: cast_nullable_to_non_nullable
              as String,
      null == routeNameC
          ? _self.routeNameC
          : routeNameC // ignore: cast_nullable_to_non_nullable
              as String,
      null == routeNameS
          ? _self.routeNameS
          : routeNameS // ignore: cast_nullable_to_non_nullable
              as String,
      null == routeNameE
          ? _self.routeNameE
          : routeNameE // ignore: cast_nullable_to_non_nullable
              as String,
      null == overnightRoute
          ? _self.overnightRoute
          : overnightRoute // ignore: cast_nullable_to_non_nullable
              as int,
      null == specialRoute
          ? _self.specialRoute
          : specialRoute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
