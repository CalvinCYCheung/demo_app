// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KMBStopModel _$KMBStopModelFromJson(Map<String, dynamic> json) => KMBStopModel(
      stop: json['stop'] as String,
      nameTC: json['name_tc'] as String,
      nameEN: json['name_en'] as String,
      nameSC: json['name_sc'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$KMBStopModelToJson(KMBStopModel instance) =>
    <String, dynamic>{
      'stop': instance.stop,
      'name_tc': instance.nameTC,
      'name_en': instance.nameEN,
      'name_sc': instance.nameSC,
      'lat': instance.lat,
      'long': instance.long,
      'runtimeType': instance.$type,
    };

CTBStopModel _$CTBStopModelFromJson(Map<String, dynamic> json) => CTBStopModel(
      stop: json['stop'] as String,
      nameEN: json['name_en'] as String,
      nameTC: json['name_tc'] as String,
      nameSC: json['name_sc'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CTBStopModelToJson(CTBStopModel instance) =>
    <String, dynamic>{
      'stop': instance.stop,
      'name_en': instance.nameEN,
      'name_tc': instance.nameTC,
      'name_sc': instance.nameSC,
      'lat': instance.lat,
      'long': instance.long,
      'runtimeType': instance.$type,
    };

NIBStopModel _$NIBStopModelFromJson(Map<String, dynamic> json) => NIBStopModel(
      stopId: json['stopId'] as String,
      stopNameC: json['stopNameC'] as String,
      stopNameE: json['stopNameE'] as String,
      stopNameS: json['stopNameS'] as String,
      stopLocationC: json['stopLocationC'] as String,
      stopLocationS: json['stopLocationS'] as String,
      stopLocationE: json['stopLocationE'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NIBStopModelToJson(NIBStopModel instance) =>
    <String, dynamic>{
      'stopId': instance.stopId,
      'stopNameC': instance.stopNameC,
      'stopNameE': instance.stopNameE,
      'stopNameS': instance.stopNameS,
      'stopLocationC': instance.stopLocationC,
      'stopLocationS': instance.stopLocationS,
      'stopLocationE': instance.stopLocationE,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'runtimeType': instance.$type,
    };
