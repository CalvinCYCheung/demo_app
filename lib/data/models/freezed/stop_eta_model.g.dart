// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_eta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KMBStopEtaModel _$KMBStopEtaModelFromJson(Map<String, dynamic> json) =>
    KMBStopEtaModel(
      co: json['co'] as String,
      route: json['route'] as String,
      dir: json['dir'] as String,
      serviceType: (json['service_type'] as num).toInt(),
      seq: (json['seq'] as num).toInt(),
      destTC: json['dest_tc'] as String,
      destSC: json['dest_sc'] as String,
      destEN: json['dest_en'] as String,
      eta: json['eta'] as String?,
      rmkTC: json['rmk_tc'] as String,
      rmkSC: json['rmk_sc'] as String,
      rmkEN: json['rmk_en'] as String,
      dataTimestamp: json['data_timestamp'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$KMBStopEtaModelToJson(KMBStopEtaModel instance) =>
    <String, dynamic>{
      'co': instance.co,
      'route': instance.route,
      'dir': instance.dir,
      'service_type': instance.serviceType,
      'seq': instance.seq,
      'dest_tc': instance.destTC,
      'dest_sc': instance.destSC,
      'dest_en': instance.destEN,
      'eta': instance.eta,
      'rmk_tc': instance.rmkTC,
      'rmk_sc': instance.rmkSC,
      'rmk_en': instance.rmkEN,
      'data_timestamp': instance.dataTimestamp,
      'runtimeType': instance.$type,
    };

CTBStopEtaModel _$CTBStopEtaModelFromJson(Map<String, dynamic> json) =>
    CTBStopEtaModel(
      co: json['co'] as String,
      route: json['route'] as String,
      dir: json['dir'] as String,
      seq: (json['seq'] as num).toInt(),
      stop: json['stop'] as String,
      destTC: json['dest_tc'] as String,
      destSC: json['dest_sc'] as String,
      destEN: json['dest_en'] as String,
      etaSeq: (json['eta_seq'] as num).toInt(),
      eta: json['eta'] as String?,
      rmkTC: json['rmk_tc'] as String,
      rmkSC: json['rmk_sc'] as String,
      rmkEN: json['rmk_en'] as String,
      dataTimestamp: json['data_timestamp'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CTBStopEtaModelToJson(CTBStopEtaModel instance) =>
    <String, dynamic>{
      'co': instance.co,
      'route': instance.route,
      'dir': instance.dir,
      'seq': instance.seq,
      'stop': instance.stop,
      'dest_tc': instance.destTC,
      'dest_sc': instance.destSC,
      'dest_en': instance.destEN,
      'eta_seq': instance.etaSeq,
      'eta': instance.eta,
      'rmk_tc': instance.rmkTC,
      'rmk_sc': instance.rmkSC,
      'rmk_en': instance.rmkEN,
      'data_timestamp': instance.dataTimestamp,
      'runtimeType': instance.$type,
    };

NIBStopEtaModel _$NIBStopEtaModelFromJson(Map<String, dynamic> json) =>
    NIBStopEtaModel(
      estimatedArrivalTime: json['estimatedArrivalTime'] as String,
      routeVariantName: json['routeVariantName'] as String,
      departed: json['departed'] as String,
      noGPS: json['noGPS'] as String,
      wheelChair: (json['wheelChair'] as num).toInt(),
      generateTime: json['generateTime'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NIBStopEtaModelToJson(NIBStopEtaModel instance) =>
    <String, dynamic>{
      'estimatedArrivalTime': instance.estimatedArrivalTime,
      'routeVariantName': instance.routeVariantName,
      'departed': instance.departed,
      'noGPS': instance.noGPS,
      'wheelChair': instance.wheelChair,
      'generateTime': instance.generateTime,
      'runtimeType': instance.$type,
    };
