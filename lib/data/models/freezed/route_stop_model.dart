import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_stop_model.freezed.dart';
part 'route_stop_model.g.dart';

@freezed
sealed class BusRouteStopModel with _$BusRouteStopModel {
  BusRouteStopModel._();
  factory BusRouteStopModel.kmb({
    required String route,
    required String bound,
    @JsonKey(name: 'service_type') required String serviceType,
    required String seq,
    required String stop,
  }) = KMBRouteStopModel;
  factory BusRouteStopModel.ctb({
    required String route,
    required String dir,
    required int seq,
    required String stop,
  }) = CTBRouteStopModel;
  factory BusRouteStopModel.nib({
    required String stopId,
    @JsonKey(name: 'stopName_c') required String stopNameC,
    @JsonKey(name: 'stopName_s') required String stopNameS,
    @JsonKey(name: 'stopName_e') required String stopNameE,
    @JsonKey(name: 'stopLocation_c') required String stopLocationC,
    @JsonKey(name: 'stopLocation_s') required String stopLocationS,
    @JsonKey(name: 'stopLocation_e') required String stopLocationE,
    required String latitude,
    required String longitude,
  }) = NIBRouteStopModel;
  factory BusRouteStopModel.fromJson(Map<String, dynamic> json) =>
      _$BusRouteStopModelFromJson(json);

  String get stop {
    return switch (this) {
      KMBRouteStopModel(:final stop) => stop,
      CTBRouteStopModel(:final stop) => stop,
      NIBRouteStopModel(:final stopId) => stopId.toString(),
    };
  }
}
