// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mtr_line_data_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MTRLineDataEntity {
  String get line;
  String get description;
  List<StationEntity> get stations;

  /// Create a copy of MTRLineDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MTRLineDataEntityCopyWith<MTRLineDataEntity> get copyWith =>
      _$MTRLineDataEntityCopyWithImpl<MTRLineDataEntity>(
          this as MTRLineDataEntity, _$identity);

  /// Serializes this MTRLineDataEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MTRLineDataEntity &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.stations, stations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, line, description,
      const DeepCollectionEquality().hash(stations));

  @override
  String toString() {
    return 'MTRLineDataEntity(line: $line, description: $description, stations: $stations)';
  }
}

/// @nodoc
abstract mixin class $MTRLineDataEntityCopyWith<$Res> {
  factory $MTRLineDataEntityCopyWith(
          MTRLineDataEntity value, $Res Function(MTRLineDataEntity) _then) =
      _$MTRLineDataEntityCopyWithImpl;
  @useResult
  $Res call({String line, String description, List<StationEntity> stations});
}

/// @nodoc
class _$MTRLineDataEntityCopyWithImpl<$Res>
    implements $MTRLineDataEntityCopyWith<$Res> {
  _$MTRLineDataEntityCopyWithImpl(this._self, this._then);

  final MTRLineDataEntity _self;
  final $Res Function(MTRLineDataEntity) _then;

  /// Create a copy of MTRLineDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = null,
    Object? description = null,
    Object? stations = null,
  }) {
    return _then(_self.copyWith(
      line: null == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stations: null == stations
          ? _self.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MTRLineDataEntity extends MTRLineDataEntity {
  _MTRLineDataEntity(
      {required this.line,
      required this.description,
      required final List<StationEntity> stations})
      : _stations = stations,
        super._();
  factory _MTRLineDataEntity.fromJson(Map<String, dynamic> json) =>
      _$MTRLineDataEntityFromJson(json);

  @override
  final String line;
  @override
  final String description;
  final List<StationEntity> _stations;
  @override
  List<StationEntity> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  /// Create a copy of MTRLineDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MTRLineDataEntityCopyWith<_MTRLineDataEntity> get copyWith =>
      __$MTRLineDataEntityCopyWithImpl<_MTRLineDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MTRLineDataEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MTRLineDataEntity &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, line, description,
      const DeepCollectionEquality().hash(_stations));

  @override
  String toString() {
    return 'MTRLineDataEntity(line: $line, description: $description, stations: $stations)';
  }
}

/// @nodoc
abstract mixin class _$MTRLineDataEntityCopyWith<$Res>
    implements $MTRLineDataEntityCopyWith<$Res> {
  factory _$MTRLineDataEntityCopyWith(
          _MTRLineDataEntity value, $Res Function(_MTRLineDataEntity) _then) =
      __$MTRLineDataEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String line, String description, List<StationEntity> stations});
}

/// @nodoc
class __$MTRLineDataEntityCopyWithImpl<$Res>
    implements _$MTRLineDataEntityCopyWith<$Res> {
  __$MTRLineDataEntityCopyWithImpl(this._self, this._then);

  final _MTRLineDataEntity _self;
  final $Res Function(_MTRLineDataEntity) _then;

  /// Create a copy of MTRLineDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? line = null,
    Object? description = null,
    Object? stations = null,
  }) {
    return _then(_MTRLineDataEntity(
      line: null == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stations: null == stations
          ? _self._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationEntity>,
    ));
  }
}

/// @nodoc
mixin _$StationEntity {
  String get sta;
  String get nameEN;
  String get nameTC;
  String get nameSC;
  double get latitude;
  double get longitude;
  bool get skipUp;
  bool get skipDown;
  bool get isInterchange;

  /// Create a copy of StationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StationEntityCopyWith<StationEntity> get copyWith =>
      _$StationEntityCopyWithImpl<StationEntity>(
          this as StationEntity, _$identity);

  /// Serializes this StationEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StationEntity &&
            (identical(other.sta, sta) || other.sta == sta) &&
            (identical(other.nameEN, nameEN) || other.nameEN == nameEN) &&
            (identical(other.nameTC, nameTC) || other.nameTC == nameTC) &&
            (identical(other.nameSC, nameSC) || other.nameSC == nameSC) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.skipUp, skipUp) || other.skipUp == skipUp) &&
            (identical(other.skipDown, skipDown) ||
                other.skipDown == skipDown) &&
            (identical(other.isInterchange, isInterchange) ||
                other.isInterchange == isInterchange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sta, nameEN, nameTC, nameSC,
      latitude, longitude, skipUp, skipDown, isInterchange);

  @override
  String toString() {
    return 'StationEntity(sta: $sta, nameEN: $nameEN, nameTC: $nameTC, nameSC: $nameSC, latitude: $latitude, longitude: $longitude, skipUp: $skipUp, skipDown: $skipDown, isInterchange: $isInterchange)';
  }
}

/// @nodoc
abstract mixin class $StationEntityCopyWith<$Res> {
  factory $StationEntityCopyWith(
          StationEntity value, $Res Function(StationEntity) _then) =
      _$StationEntityCopyWithImpl;
  @useResult
  $Res call(
      {String sta,
      String nameEN,
      String nameTC,
      String nameSC,
      double latitude,
      double longitude,
      bool skipUp,
      bool skipDown,
      bool isInterchange});
}

/// @nodoc
class _$StationEntityCopyWithImpl<$Res>
    implements $StationEntityCopyWith<$Res> {
  _$StationEntityCopyWithImpl(this._self, this._then);

  final StationEntity _self;
  final $Res Function(StationEntity) _then;

  /// Create a copy of StationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sta = null,
    Object? nameEN = null,
    Object? nameTC = null,
    Object? nameSC = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? skipUp = null,
    Object? skipDown = null,
    Object? isInterchange = null,
  }) {
    return _then(_self.copyWith(
      sta: null == sta
          ? _self.sta
          : sta // ignore: cast_nullable_to_non_nullable
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
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      skipUp: null == skipUp
          ? _self.skipUp
          : skipUp // ignore: cast_nullable_to_non_nullable
              as bool,
      skipDown: null == skipDown
          ? _self.skipDown
          : skipDown // ignore: cast_nullable_to_non_nullable
              as bool,
      isInterchange: null == isInterchange
          ? _self.isInterchange
          : isInterchange // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StationEntity extends StationEntity {
  _StationEntity(
      {required this.sta,
      required this.nameEN,
      required this.nameTC,
      required this.nameSC,
      required this.latitude,
      required this.longitude,
      required this.skipUp,
      required this.skipDown,
      required this.isInterchange})
      : super._();
  factory _StationEntity.fromJson(Map<String, dynamic> json) =>
      _$StationEntityFromJson(json);

  @override
  final String sta;
  @override
  final String nameEN;
  @override
  final String nameTC;
  @override
  final String nameSC;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final bool skipUp;
  @override
  final bool skipDown;
  @override
  final bool isInterchange;

  /// Create a copy of StationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StationEntityCopyWith<_StationEntity> get copyWith =>
      __$StationEntityCopyWithImpl<_StationEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StationEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StationEntity &&
            (identical(other.sta, sta) || other.sta == sta) &&
            (identical(other.nameEN, nameEN) || other.nameEN == nameEN) &&
            (identical(other.nameTC, nameTC) || other.nameTC == nameTC) &&
            (identical(other.nameSC, nameSC) || other.nameSC == nameSC) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.skipUp, skipUp) || other.skipUp == skipUp) &&
            (identical(other.skipDown, skipDown) ||
                other.skipDown == skipDown) &&
            (identical(other.isInterchange, isInterchange) ||
                other.isInterchange == isInterchange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sta, nameEN, nameTC, nameSC,
      latitude, longitude, skipUp, skipDown, isInterchange);

  @override
  String toString() {
    return 'StationEntity(sta: $sta, nameEN: $nameEN, nameTC: $nameTC, nameSC: $nameSC, latitude: $latitude, longitude: $longitude, skipUp: $skipUp, skipDown: $skipDown, isInterchange: $isInterchange)';
  }
}

/// @nodoc
abstract mixin class _$StationEntityCopyWith<$Res>
    implements $StationEntityCopyWith<$Res> {
  factory _$StationEntityCopyWith(
          _StationEntity value, $Res Function(_StationEntity) _then) =
      __$StationEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String sta,
      String nameEN,
      String nameTC,
      String nameSC,
      double latitude,
      double longitude,
      bool skipUp,
      bool skipDown,
      bool isInterchange});
}

/// @nodoc
class __$StationEntityCopyWithImpl<$Res>
    implements _$StationEntityCopyWith<$Res> {
  __$StationEntityCopyWithImpl(this._self, this._then);

  final _StationEntity _self;
  final $Res Function(_StationEntity) _then;

  /// Create a copy of StationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sta = null,
    Object? nameEN = null,
    Object? nameTC = null,
    Object? nameSC = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? skipUp = null,
    Object? skipDown = null,
    Object? isInterchange = null,
  }) {
    return _then(_StationEntity(
      sta: null == sta
          ? _self.sta
          : sta // ignore: cast_nullable_to_non_nullable
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
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      skipUp: null == skipUp
          ? _self.skipUp
          : skipUp // ignore: cast_nullable_to_non_nullable
              as bool,
      skipDown: null == skipDown
          ? _self.skipDown
          : skipDown // ignore: cast_nullable_to_non_nullable
              as bool,
      isInterchange: null == isInterchange
          ? _self.isInterchange
          : isInterchange // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
