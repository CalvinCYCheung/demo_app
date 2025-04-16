// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchState {
  List<SearchRouteEntity> get routes;
  List<int>? get errorsRoutes;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchStateCopyWith<SearchState> get copyWith =>
      _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchState &&
            const DeepCollectionEquality().equals(other.routes, routes) &&
            const DeepCollectionEquality()
                .equals(other.errorsRoutes, errorsRoutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(routes),
      const DeepCollectionEquality().hash(errorsRoutes));

  @override
  String toString() {
    return 'SearchState(routes: $routes, errorsRoutes: $errorsRoutes)';
  }
}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) _then) =
      _$SearchStateCopyWithImpl;
  @useResult
  $Res call({List<SearchRouteEntity> routes, List<int>? errorsRoutes});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = null,
    Object? errorsRoutes = freezed,
  }) {
    return _then(_self.copyWith(
      routes: null == routes
          ? _self.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<SearchRouteEntity>,
      errorsRoutes: freezed == errorsRoutes
          ? _self.errorsRoutes
          : errorsRoutes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _SearchState extends SearchState {
  _SearchState(
      {required final List<SearchRouteEntity> routes,
      final List<int>? errorsRoutes})
      : _routes = routes,
        _errorsRoutes = errorsRoutes,
        super._();

  final List<SearchRouteEntity> _routes;
  @override
  List<SearchRouteEntity> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  final List<int>? _errorsRoutes;
  @override
  List<int>? get errorsRoutes {
    final value = _errorsRoutes;
    if (value == null) return null;
    if (_errorsRoutes is EqualUnmodifiableListView) return _errorsRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchState &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            const DeepCollectionEquality()
                .equals(other._errorsRoutes, _errorsRoutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_routes),
      const DeepCollectionEquality().hash(_errorsRoutes));

  @override
  String toString() {
    return 'SearchState(routes: $routes, errorsRoutes: $errorsRoutes)';
  }
}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) _then) =
      __$SearchStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<SearchRouteEntity> routes, List<int>? errorsRoutes});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routes = null,
    Object? errorsRoutes = freezed,
  }) {
    return _then(_SearchState(
      routes: null == routes
          ? _self._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<SearchRouteEntity>,
      errorsRoutes: freezed == errorsRoutes
          ? _self._errorsRoutes
          : errorsRoutes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

SearchRouteEntity _$SearchRouteEntityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'bus':
      return BusRouteEntity.fromJson(json);
    case 'mtr':
      return MtrRouteEntity.fromJson(json);
    case 'minibus':
      return MinibusRouteEntity.fromJson(json);
    case 'lightRail':
      return LightRailRouteEntity.fromJson(json);
    case 'ferry':
      return FerryRouteEntity.fromJson(json);
    case 'unknown':
      return UnknownRouteEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SearchRouteEntity',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SearchRouteEntity {
  String get routeName;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchRouteEntityCopyWith<SearchRouteEntity> get copyWith =>
      _$SearchRouteEntityCopyWithImpl<SearchRouteEntity>(
          this as SearchRouteEntity, _$identity);

  /// Serializes this SearchRouteEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchRouteEntity &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routeName);

  @override
  String toString() {
    return 'SearchRouteEntity(routeName: $routeName)';
  }
}

/// @nodoc
abstract mixin class $SearchRouteEntityCopyWith<$Res> {
  factory $SearchRouteEntityCopyWith(
          SearchRouteEntity value, $Res Function(SearchRouteEntity) _then) =
      _$SearchRouteEntityCopyWithImpl;
  @useResult
  $Res call({String routeName});
}

/// @nodoc
class _$SearchRouteEntityCopyWithImpl<$Res>
    implements $SearchRouteEntityCopyWith<$Res> {
  _$SearchRouteEntityCopyWithImpl(this._self, this._then);

  final SearchRouteEntity _self;
  final $Res Function(SearchRouteEntity) _then;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
  }) {
    return _then(_self.copyWith(
      routeName: null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BusRouteEntity extends SearchRouteEntity {
  BusRouteEntity(
      {required this.routeName,
      required this.direction,
      required this.coName,
      required this.orig,
      required this.dest,
      this.routeId,
      final String? $type})
      : $type = $type ?? 'bus',
        super._();
  factory BusRouteEntity.fromJson(Map<String, dynamic> json) =>
      _$BusRouteEntityFromJson(json);

  @override
  final String routeName;
  final RouteDirection direction;
  final String coName;
  final String orig;
  final String dest;
  final String? routeId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BusRouteEntityCopyWith<BusRouteEntity> get copyWith =>
      _$BusRouteEntityCopyWithImpl<BusRouteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BusRouteEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BusRouteEntity &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.coName, coName) || other.coName == coName) &&
            (identical(other.orig, orig) || other.orig == orig) &&
            (identical(other.dest, dest) || other.dest == dest) &&
            (identical(other.routeId, routeId) || other.routeId == routeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, routeName, direction, coName, orig, dest, routeId);

  @override
  String toString() {
    return 'SearchRouteEntity.bus(routeName: $routeName, direction: $direction, coName: $coName, orig: $orig, dest: $dest, routeId: $routeId)';
  }
}

/// @nodoc
abstract mixin class $BusRouteEntityCopyWith<$Res>
    implements $SearchRouteEntityCopyWith<$Res> {
  factory $BusRouteEntityCopyWith(
          BusRouteEntity value, $Res Function(BusRouteEntity) _then) =
      _$BusRouteEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String routeName,
      RouteDirection direction,
      String coName,
      String orig,
      String dest,
      String? routeId});
}

/// @nodoc
class _$BusRouteEntityCopyWithImpl<$Res>
    implements $BusRouteEntityCopyWith<$Res> {
  _$BusRouteEntityCopyWithImpl(this._self, this._then);

  final BusRouteEntity _self;
  final $Res Function(BusRouteEntity) _then;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeName = null,
    Object? direction = null,
    Object? coName = null,
    Object? orig = null,
    Object? dest = null,
    Object? routeId = freezed,
  }) {
    return _then(BusRouteEntity(
      routeName: null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as RouteDirection,
      coName: null == coName
          ? _self.coName
          : coName // ignore: cast_nullable_to_non_nullable
              as String,
      orig: null == orig
          ? _self.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as String,
      dest: null == dest
          ? _self.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
      routeId: freezed == routeId
          ? _self.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MtrRouteEntity extends SearchRouteEntity {
  MtrRouteEntity(
      {required this.routeName,
      required this.coName,
      required this.orig,
      required this.dest,
      final String? $type})
      : $type = $type ?? 'mtr',
        super._();
  factory MtrRouteEntity.fromJson(Map<String, dynamic> json) =>
      _$MtrRouteEntityFromJson(json);

  @override
  final String routeName;
  final String coName;
  final String orig;
  final String dest;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MtrRouteEntityCopyWith<MtrRouteEntity> get copyWith =>
      _$MtrRouteEntityCopyWithImpl<MtrRouteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MtrRouteEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MtrRouteEntity &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.coName, coName) || other.coName == coName) &&
            (identical(other.orig, orig) || other.orig == orig) &&
            (identical(other.dest, dest) || other.dest == dest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routeName, coName, orig, dest);

  @override
  String toString() {
    return 'SearchRouteEntity.mtr(routeName: $routeName, coName: $coName, orig: $orig, dest: $dest)';
  }
}

/// @nodoc
abstract mixin class $MtrRouteEntityCopyWith<$Res>
    implements $SearchRouteEntityCopyWith<$Res> {
  factory $MtrRouteEntityCopyWith(
          MtrRouteEntity value, $Res Function(MtrRouteEntity) _then) =
      _$MtrRouteEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String routeName, String coName, String orig, String dest});
}

/// @nodoc
class _$MtrRouteEntityCopyWithImpl<$Res>
    implements $MtrRouteEntityCopyWith<$Res> {
  _$MtrRouteEntityCopyWithImpl(this._self, this._then);

  final MtrRouteEntity _self;
  final $Res Function(MtrRouteEntity) _then;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeName = null,
    Object? coName = null,
    Object? orig = null,
    Object? dest = null,
  }) {
    return _then(MtrRouteEntity(
      routeName: null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      coName: null == coName
          ? _self.coName
          : coName // ignore: cast_nullable_to_non_nullable
              as String,
      orig: null == orig
          ? _self.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as String,
      dest: null == dest
          ? _self.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MinibusRouteEntity extends SearchRouteEntity {
  MinibusRouteEntity(
      {required this.routeName,
      required this.coName,
      required this.orig,
      required this.dest,
      final String? $type})
      : $type = $type ?? 'minibus',
        super._();
  factory MinibusRouteEntity.fromJson(Map<String, dynamic> json) =>
      _$MinibusRouteEntityFromJson(json);

  @override
  final String routeName;
  final String coName;
  final String orig;
  final String dest;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MinibusRouteEntityCopyWith<MinibusRouteEntity> get copyWith =>
      _$MinibusRouteEntityCopyWithImpl<MinibusRouteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MinibusRouteEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MinibusRouteEntity &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.coName, coName) || other.coName == coName) &&
            (identical(other.orig, orig) || other.orig == orig) &&
            (identical(other.dest, dest) || other.dest == dest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routeName, coName, orig, dest);

  @override
  String toString() {
    return 'SearchRouteEntity.minibus(routeName: $routeName, coName: $coName, orig: $orig, dest: $dest)';
  }
}

/// @nodoc
abstract mixin class $MinibusRouteEntityCopyWith<$Res>
    implements $SearchRouteEntityCopyWith<$Res> {
  factory $MinibusRouteEntityCopyWith(
          MinibusRouteEntity value, $Res Function(MinibusRouteEntity) _then) =
      _$MinibusRouteEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String routeName, String coName, String orig, String dest});
}

/// @nodoc
class _$MinibusRouteEntityCopyWithImpl<$Res>
    implements $MinibusRouteEntityCopyWith<$Res> {
  _$MinibusRouteEntityCopyWithImpl(this._self, this._then);

  final MinibusRouteEntity _self;
  final $Res Function(MinibusRouteEntity) _then;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeName = null,
    Object? coName = null,
    Object? orig = null,
    Object? dest = null,
  }) {
    return _then(MinibusRouteEntity(
      routeName: null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      coName: null == coName
          ? _self.coName
          : coName // ignore: cast_nullable_to_non_nullable
              as String,
      orig: null == orig
          ? _self.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as String,
      dest: null == dest
          ? _self.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class LightRailRouteEntity extends SearchRouteEntity {
  LightRailRouteEntity(
      {required this.routeName,
      required this.coName,
      required this.orig,
      required this.dest,
      final String? $type})
      : $type = $type ?? 'lightRail',
        super._();
  factory LightRailRouteEntity.fromJson(Map<String, dynamic> json) =>
      _$LightRailRouteEntityFromJson(json);

  @override
  final String routeName;
  final String coName;
  final String orig;
  final String dest;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LightRailRouteEntityCopyWith<LightRailRouteEntity> get copyWith =>
      _$LightRailRouteEntityCopyWithImpl<LightRailRouteEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LightRailRouteEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LightRailRouteEntity &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.coName, coName) || other.coName == coName) &&
            (identical(other.orig, orig) || other.orig == orig) &&
            (identical(other.dest, dest) || other.dest == dest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routeName, coName, orig, dest);

  @override
  String toString() {
    return 'SearchRouteEntity.lightRail(routeName: $routeName, coName: $coName, orig: $orig, dest: $dest)';
  }
}

/// @nodoc
abstract mixin class $LightRailRouteEntityCopyWith<$Res>
    implements $SearchRouteEntityCopyWith<$Res> {
  factory $LightRailRouteEntityCopyWith(LightRailRouteEntity value,
          $Res Function(LightRailRouteEntity) _then) =
      _$LightRailRouteEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String routeName, String coName, String orig, String dest});
}

/// @nodoc
class _$LightRailRouteEntityCopyWithImpl<$Res>
    implements $LightRailRouteEntityCopyWith<$Res> {
  _$LightRailRouteEntityCopyWithImpl(this._self, this._then);

  final LightRailRouteEntity _self;
  final $Res Function(LightRailRouteEntity) _then;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeName = null,
    Object? coName = null,
    Object? orig = null,
    Object? dest = null,
  }) {
    return _then(LightRailRouteEntity(
      routeName: null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      coName: null == coName
          ? _self.coName
          : coName // ignore: cast_nullable_to_non_nullable
              as String,
      orig: null == orig
          ? _self.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as String,
      dest: null == dest
          ? _self.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class FerryRouteEntity extends SearchRouteEntity {
  FerryRouteEntity(
      {required this.routeName,
      required this.coName,
      required this.orig,
      required this.dest,
      final String? $type})
      : $type = $type ?? 'ferry',
        super._();
  factory FerryRouteEntity.fromJson(Map<String, dynamic> json) =>
      _$FerryRouteEntityFromJson(json);

  @override
  final String routeName;
  final String coName;
  final String orig;
  final String dest;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FerryRouteEntityCopyWith<FerryRouteEntity> get copyWith =>
      _$FerryRouteEntityCopyWithImpl<FerryRouteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FerryRouteEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FerryRouteEntity &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.coName, coName) || other.coName == coName) &&
            (identical(other.orig, orig) || other.orig == orig) &&
            (identical(other.dest, dest) || other.dest == dest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routeName, coName, orig, dest);

  @override
  String toString() {
    return 'SearchRouteEntity.ferry(routeName: $routeName, coName: $coName, orig: $orig, dest: $dest)';
  }
}

/// @nodoc
abstract mixin class $FerryRouteEntityCopyWith<$Res>
    implements $SearchRouteEntityCopyWith<$Res> {
  factory $FerryRouteEntityCopyWith(
          FerryRouteEntity value, $Res Function(FerryRouteEntity) _then) =
      _$FerryRouteEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String routeName, String coName, String orig, String dest});
}

/// @nodoc
class _$FerryRouteEntityCopyWithImpl<$Res>
    implements $FerryRouteEntityCopyWith<$Res> {
  _$FerryRouteEntityCopyWithImpl(this._self, this._then);

  final FerryRouteEntity _self;
  final $Res Function(FerryRouteEntity) _then;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeName = null,
    Object? coName = null,
    Object? orig = null,
    Object? dest = null,
  }) {
    return _then(FerryRouteEntity(
      routeName: null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      coName: null == coName
          ? _self.coName
          : coName // ignore: cast_nullable_to_non_nullable
              as String,
      orig: null == orig
          ? _self.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as String,
      dest: null == dest
          ? _self.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class UnknownRouteEntity extends SearchRouteEntity {
  UnknownRouteEntity({required this.routeName, final String? $type})
      : $type = $type ?? 'unknown',
        super._();
  factory UnknownRouteEntity.fromJson(Map<String, dynamic> json) =>
      _$UnknownRouteEntityFromJson(json);

  @override
  final String routeName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnknownRouteEntityCopyWith<UnknownRouteEntity> get copyWith =>
      _$UnknownRouteEntityCopyWithImpl<UnknownRouteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnknownRouteEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownRouteEntity &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routeName);

  @override
  String toString() {
    return 'SearchRouteEntity.unknown(routeName: $routeName)';
  }
}

/// @nodoc
abstract mixin class $UnknownRouteEntityCopyWith<$Res>
    implements $SearchRouteEntityCopyWith<$Res> {
  factory $UnknownRouteEntityCopyWith(
          UnknownRouteEntity value, $Res Function(UnknownRouteEntity) _then) =
      _$UnknownRouteEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String routeName});
}

/// @nodoc
class _$UnknownRouteEntityCopyWithImpl<$Res>
    implements $UnknownRouteEntityCopyWith<$Res> {
  _$UnknownRouteEntityCopyWithImpl(this._self, this._then);

  final UnknownRouteEntity _self;
  final $Res Function(UnknownRouteEntity) _then;

  /// Create a copy of SearchRouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeName = null,
  }) {
    return _then(UnknownRouteEntity(
      routeName: null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
