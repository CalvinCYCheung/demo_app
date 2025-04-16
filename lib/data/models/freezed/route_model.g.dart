// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KMB _$KMBFromJson(Map<String, dynamic> json) => KMB(
      route: json['route'] as String,
      bound: json['bound'] as String,
      origEN: json['orig_en'] as String,
      origTC: json['orig_tc'] as String,
      origSC: json['orig_sc'] as String,
      destEN: json['dest_en'] as String,
      destTC: json['dest_tc'] as String,
      destSC: json['dest_sc'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$KMBToJson(KMB instance) => <String, dynamic>{
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

CTB _$CTBFromJson(Map<String, dynamic> json) => CTB(
      route: json['route'] as String,
      bound: json['bound'] as String? ?? 'I',
      origTC: json['orig_tc'] as String,
      origEN: json['orig_en'] as String,
      destTC: json['dest_tc'] as String,
      destEN: json['dest_en'] as String,
      origSC: json['orig_sc'] as String,
      destSC: json['dest_sc'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CTBToJson(CTB instance) => <String, dynamic>{
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

NIB _$NIBFromJson(Map<String, dynamic> json) => NIB(
      routeId: json['routeId'] as String,
      routeNo: json['routeNo'] as String,
      routeNameC: json['routeName_c'] as String,
      routeNameS: json['routeName_s'] as String,
      routeNameE: json['routeName_e'] as String,
      overnightRoute: (json['overnightRoute'] as num).toInt(),
      specialRoute: (json['specialRoute'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NIBToJson(NIB instance) => <String, dynamic>{
      'routeId': instance.routeId,
      'routeNo': instance.routeNo,
      'routeName_c': instance.routeNameC,
      'routeName_s': instance.routeNameS,
      'routeName_e': instance.routeNameE,
      'overnightRoute': instance.overnightRoute,
      'specialRoute': instance.specialRoute,
      'runtimeType': instance.$type,
    };
