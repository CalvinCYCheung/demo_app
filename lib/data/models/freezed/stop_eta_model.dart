import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_eta_model.freezed.dart';
part 'stop_eta_model.g.dart';

// KMB ['data]

// "co": "KMB",
// "route": "234X",
// "dir": "I",
// "service_type": 1,
// "seq": 2,
// "dest_tc": "尖沙咀東(麼地道)",
// "dest_sc": "尖沙咀东(么地道)",
// "dest_en": "TSIM SHA TSUI EAST (MODY ROAD)", "eta_seq": 1,
// "eta": "2021-03-18T12:31:59+08:00",
// "rmk_tc": "原定班次",
// "rmk_sc": "原定班次",
// "rmk_en": "Scheduled Bus",
// "data_timestamp": "2021-03-18T12:21:15+08:00"

// CTB ['data]

// "co": "CTB",
//  "route": "11",
//  "dir": "O",
//  "seq": 1,
//  "stop": "001145",
//  "dest_tc": "渣甸山",
//  "dest_sc": "渣甸山",
//  "dest_en": "Jardine's Lookout",
//  "eta_seq": 1,
//  "eta": "2023-07-01T15:48:00+08:00",
//  "rmk_tc": "",
//  "rmk_sc": "",
//  "rmk_en": "",
//  "data_timestamp": "2023-07-01T15:44:33+08:00"

// NIB ['estimatedArrivals]

// "estimatedArrivalTime": "2025-03-31 17:11:29",
// "routeVariantName": "經: 梅窩舊墟、沙咀懲教所",
// "departed": "0",
// "noGPS": "0",
// "wheelChair": 0,
// "generateTime": "2025-03-31 17:04:59"

@freezed
sealed class StopEtaModel with _$StopEtaModel {
  StopEtaModel._();
  factory StopEtaModel.kmb({
    required String co,
    required String route,
    required String dir,
    @JsonKey(name: 'service_type') required int serviceType,
    required int seq,
    @JsonKey(name: 'dest_tc') required String destTC,
    @JsonKey(name: 'dest_sc') required String destSC,
    @JsonKey(name: 'dest_en') required String destEN,
    String? eta,
    @JsonKey(name: 'rmk_tc') required String rmkTC,
    @JsonKey(name: 'rmk_sc') required String rmkSC,
    @JsonKey(name: 'rmk_en') required String rmkEN,
    @JsonKey(name: 'data_timestamp') required String dataTimestamp,
  }) = KMBStopEtaModel;
  factory StopEtaModel.ctb({
    required String co,
    required String route,
    required String dir,
    required int seq,
    required String stop,
    @JsonKey(name: 'dest_tc') required String destTC,
    @JsonKey(name: 'dest_sc') required String destSC,
    @JsonKey(name: 'dest_en') required String destEN,
    @JsonKey(name: 'eta_seq') required int etaSeq,
    String? eta,
    @JsonKey(name: 'rmk_tc') required String rmkTC,
    @JsonKey(name: 'rmk_sc') required String rmkSC,
    @JsonKey(name: 'rmk_en') required String rmkEN,
    @JsonKey(name: 'data_timestamp') required String dataTimestamp,
  }) = CTBStopEtaModel;
  factory StopEtaModel.nib({
    required String estimatedArrivalTime,
    required String routeVariantName,
    required String departed,
    required String noGPS,
    required int wheelChair,
    required String generateTime,
  }) = NIBStopEtaModel;
  factory StopEtaModel.fromJson(Map<String, dynamic> json) =>
      _$StopEtaModelFromJson(json);

  B when<B>({
    required B Function(KMBStopEtaModel) kmb,
    required B Function(CTBStopEtaModel) ctb,
    required B Function(NIBStopEtaModel) nib,
  }) {
    return switch (this) {
      KMBStopEtaModel() => kmb(this as KMBStopEtaModel),
      CTBStopEtaModel() => ctb(this as CTBStopEtaModel),
      NIBStopEtaModel() => nib(this as NIBStopEtaModel),
    };
  }
}
