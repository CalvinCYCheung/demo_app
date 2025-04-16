// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_stop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KMBRouteStopModel _$KMBRouteStopModelFromJson(Map<String, dynamic> json) =>
    KMBRouteStopModel(
      route: json['route'] as String,
      bound: json['bound'] as String,
      serviceType: json['service_type'] as String,
      seq: json['seq'] as String,
      stop: json['stop'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$KMBRouteStopModelToJson(KMBRouteStopModel instance) =>
    <String, dynamic>{
      'route': instance.route,
      'bound': instance.bound,
      'service_type': instance.serviceType,
      'seq': instance.seq,
      'stop': instance.stop,
      'runtimeType': instance.$type,
    };

CTBRouteStopModel _$CTBRouteStopModelFromJson(Map<String, dynamic> json) =>
    CTBRouteStopModel(
      route: json['route'] as String,
      dir: json['dir'] as String,
      seq: (json['seq'] as num).toInt(),
      stop: json['stop'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CTBRouteStopModelToJson(CTBRouteStopModel instance) =>
    <String, dynamic>{
      'route': instance.route,
      'dir': instance.dir,
      'seq': instance.seq,
      'stop': instance.stop,
      'runtimeType': instance.$type,
    };

NIBRouteStopModel _$NIBRouteStopModelFromJson(Map<String, dynamic> json) =>
    NIBRouteStopModel(
      stopId: json['stopId'] as String,
      stopNameC: json['stopName_c'] as String,
      stopNameS: json['stopName_s'] as String,
      stopNameE: json['stopName_e'] as String,
      stopLocationC: json['stopLocation_c'] as String,
      stopLocationS: json['stopLocation_s'] as String,
      stopLocationE: json['stopLocation_e'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NIBRouteStopModelToJson(NIBRouteStopModel instance) =>
    <String, dynamic>{
      'stopId': instance.stopId,
      'stopName_c': instance.stopNameC,
      'stopName_s': instance.stopNameS,
      'stopName_e': instance.stopNameE,
      'stopLocation_c': instance.stopLocationC,
      'stopLocation_s': instance.stopLocationS,
      'stopLocation_e': instance.stopLocationE,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'runtimeType': instance.$type,
    };
