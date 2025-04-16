// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusRouteEntity _$BusRouteEntityFromJson(Map<String, dynamic> json) =>
    BusRouteEntity(
      routeName: json['routeName'] as String,
      direction: $enumDecode(_$RouteDirectionEnumMap, json['direction']),
      coName: json['coName'] as String,
      orig: json['orig'] as String,
      dest: json['dest'] as String,
      routeId: json['routeId'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BusRouteEntityToJson(BusRouteEntity instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'direction': _$RouteDirectionEnumMap[instance.direction]!,
      'coName': instance.coName,
      'orig': instance.orig,
      'dest': instance.dest,
      'routeId': instance.routeId,
      'runtimeType': instance.$type,
    };

const _$RouteDirectionEnumMap = {
  RouteDirection.inbound: 'inbound',
  RouteDirection.outbound: 'outbound',
};

MtrRouteEntity _$MtrRouteEntityFromJson(Map<String, dynamic> json) =>
    MtrRouteEntity(
      routeName: json['routeName'] as String,
      coName: json['coName'] as String,
      orig: json['orig'] as String,
      dest: json['dest'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MtrRouteEntityToJson(MtrRouteEntity instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'coName': instance.coName,
      'orig': instance.orig,
      'dest': instance.dest,
      'runtimeType': instance.$type,
    };

MinibusRouteEntity _$MinibusRouteEntityFromJson(Map<String, dynamic> json) =>
    MinibusRouteEntity(
      routeName: json['routeName'] as String,
      coName: json['coName'] as String,
      orig: json['orig'] as String,
      dest: json['dest'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MinibusRouteEntityToJson(MinibusRouteEntity instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'coName': instance.coName,
      'orig': instance.orig,
      'dest': instance.dest,
      'runtimeType': instance.$type,
    };

LightRailRouteEntity _$LightRailRouteEntityFromJson(
        Map<String, dynamic> json) =>
    LightRailRouteEntity(
      routeName: json['routeName'] as String,
      coName: json['coName'] as String,
      orig: json['orig'] as String,
      dest: json['dest'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LightRailRouteEntityToJson(
        LightRailRouteEntity instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'coName': instance.coName,
      'orig': instance.orig,
      'dest': instance.dest,
      'runtimeType': instance.$type,
    };

FerryRouteEntity _$FerryRouteEntityFromJson(Map<String, dynamic> json) =>
    FerryRouteEntity(
      routeName: json['routeName'] as String,
      coName: json['coName'] as String,
      orig: json['orig'] as String,
      dest: json['dest'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$FerryRouteEntityToJson(FerryRouteEntity instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'coName': instance.coName,
      'orig': instance.orig,
      'dest': instance.dest,
      'runtimeType': instance.$type,
    };

UnknownRouteEntity _$UnknownRouteEntityFromJson(Map<String, dynamic> json) =>
    UnknownRouteEntity(
      routeName: json['routeName'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UnknownRouteEntityToJson(UnknownRouteEntity instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'runtimeType': instance.$type,
    };
