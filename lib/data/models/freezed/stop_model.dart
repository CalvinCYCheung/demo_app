import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_model.freezed.dart';
part 'stop_model.g.dart';

@freezed
sealed class BusStopModel with _$BusStopModel {
  const factory BusStopModel.kmb({
    required String stop,
    @JsonKey(name: 'name_tc') required String nameTC,
    @JsonKey(name: 'name_en') required String nameEN,
    @JsonKey(name: 'name_sc') required String nameSC,
    required String lat,
    required String long,
  }) = KMBStopModel;
  const factory BusStopModel.ctb({
    required String stop,
    @JsonKey(name: 'name_en') required String nameEN,
    @JsonKey(name: 'name_tc') required String nameTC,
    @JsonKey(name: 'name_sc') required String nameSC,
    required String lat,
    required String long,
  }) = CTBStopModel;
  const factory BusStopModel.nib({
    required String stopId,
    required String stopNameC,
    required String stopNameE,
    required String stopNameS,
    required String stopLocationC,
    required String stopLocationS,
    required String stopLocationE,
    required String latitude,
    required String longitude,
  }) = NIBStopModel;

  factory BusStopModel.fromJson(Map<String, dynamic> json) =>
      _$BusStopModelFromJson(json);
}
