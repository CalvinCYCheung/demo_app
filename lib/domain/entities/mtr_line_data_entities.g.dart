// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtr_line_data_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MTRLineDataEntity _$MTRLineDataEntityFromJson(Map<String, dynamic> json) =>
    _MTRLineDataEntity(
      line: json['line'] as String,
      description: json['description'] as String,
      stations: (json['stations'] as List<dynamic>)
          .map((e) => StationEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MTRLineDataEntityToJson(_MTRLineDataEntity instance) =>
    <String, dynamic>{
      'line': instance.line,
      'description': instance.description,
      'stations': instance.stations,
    };

_StationEntity _$StationEntityFromJson(Map<String, dynamic> json) =>
    _StationEntity(
      sta: json['sta'] as String,
      nameEN: json['nameEN'] as String,
      nameTC: json['nameTC'] as String,
      nameSC: json['nameSC'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      skipUp: json['skipUp'] as bool,
      skipDown: json['skipDown'] as bool,
      isInterchange: json['isInterchange'] as bool,
    );

Map<String, dynamic> _$StationEntityToJson(_StationEntity instance) =>
    <String, dynamic>{
      'sta': instance.sta,
      'nameEN': instance.nameEN,
      'nameTC': instance.nameTC,
      'nameSC': instance.nameSC,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'skipUp': instance.skipUp,
      'skipDown': instance.skipDown,
      'isInterchange': instance.isInterchange,
    };
