// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_route_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KMBRoute _$KMBRouteFromJson(Map<String, dynamic> json) => KMBRoute(
      json['route'] as String,
      json['bound'] as String,
      json['orig_en'] as String,
      json['orig_tc'] as String,
      json['orig_sc'] as String,
      json['dest_en'] as String,
      json['dest_tc'] as String,
      json['dest_sc'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$KMBRouteToJson(KMBRoute instance) => <String, dynamic>{
      'route': instance.route,
      'bound': instance.bound,
      'orig_en': instance.origEN,
      'orig_tc': instance.origTC,
      'orig_sc': instance.origSC,
      'dest_en': instance.destEN,
      'dest_tc': instance.destTC,
      'dest_sc': instance.destSC,
      'runtimeType': instance.$type,
    };

CTBRoute _$CTBRouteFromJson(Map<String, dynamic> json) => CTBRoute(
      json['route'] as String,
      json['bound'] as String,
      json['orig_tc'] as String,
      json['orig_en'] as String,
      json['dest_tc'] as String,
      json['dest_en'] as String,
      json['orig_sc'] as String,
      json['dest_sc'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CTBRouteToJson(CTBRoute instance) => <String, dynamic>{
      'route': instance.route,
      'bound': instance.bound,
      'orig_tc': instance.origTC,
      'orig_en': instance.origEN,
      'dest_tc': instance.destTC,
      'dest_en': instance.destEN,
      'orig_sc': instance.origSC,
      'dest_sc': instance.destSC,
      'runtimeType': instance.$type,
    };

NIBRoute _$NIBRouteFromJson(Map<String, dynamic> json) => NIBRoute(
      json['routeId'] as String,
      json['routeNo'] as String,
      json['routeName_c'] as String,
      json['routeName_s'] as String,
      json['routeName_e'] as String,
      (json['overnightRoute'] as num).toInt(),
      (json['specialRoute'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NIBRouteToJson(NIBRoute instance) => <String, dynamic>{
      'routeId': instance.routeId,
      'routeNo': instance.routeNo,
      'routeName_c': instance.routeNameC,
      'routeName_s': instance.routeNameS,
      'routeName_e': instance.routeNameE,
      'overnightRoute': instance.overnightRoute,
      'specialRoute': instance.specialRoute,
      'runtimeType': instance.$type,
    };
