import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_model.freezed.dart';
part 'route_model.g.dart';

enum RouteDirection {
  inbound,
  outbound;

  static String byCharacter(String character) {
    return switch (character) {
      'I' => 'inbound',
      'O' => 'outbound',
      _ => throw ArgumentError('Invalid character: $character'),
    };
  }
}

@freezed
sealed class BusRouteModel with _$BusRouteModel {
  const BusRouteModel._();
  const factory BusRouteModel.kmb({
    required String route,
    required String bound,
    @JsonKey(name: 'orig_en') required String origEN,
    @JsonKey(name: 'orig_tc') required String origTC,
    @JsonKey(name: 'orig_sc') required String origSC,
    @JsonKey(name: 'dest_en') required String destEN,
    @JsonKey(name: 'dest_tc') required String destTC,
    @JsonKey(name: 'dest_sc') required String destSC,
  }) = KMB;

  const factory BusRouteModel.ctb({
    required String route,
    @Default('I') String bound,
    @JsonKey(name: 'orig_tc') required String origTC,
    @JsonKey(name: 'orig_en') required String origEN,
    @JsonKey(name: 'dest_tc') required String destTC,
    @JsonKey(name: 'dest_en') required String destEN,
    @JsonKey(name: 'orig_sc') required String origSC,
    @JsonKey(name: 'dest_sc') required String destSC,
  }) = CTB;

  const factory BusRouteModel.nib({
    required String routeId,
    required String routeNo,
    @JsonKey(name: 'routeName_c') required String routeNameC,
    @JsonKey(name: 'routeName_s') required String routeNameS,
    @JsonKey(name: 'routeName_e') required String routeNameE,
    required int overnightRoute,
    required int specialRoute,
  }) = NIB;

  factory BusRouteModel.fromJson(Map<String, dynamic> json) =>
      _$BusRouteModelFromJson(json);

  String get dest {
    return switch (this) {
      KMB(destTC: String destTC) => destTC,
      CTB(destTC: String destTC) => destTC,
      NIB(routeNameC: String routeNameC) =>
        routeNameC.split('\u003E').last.trim(),
    };
  }

  String get orign {
    return switch (this) {
      KMB(origTC: String origTC) => origTC,
      CTB(origTC: String origTC) => origTC,
      NIB(routeNameC: String routeNameC) =>
        routeNameC.split('\u003E').first.trim(),
    };
  }

  /// @With<XXX>()
  /// @Implements.fromString('XXXX')
  ///const factory DataClass.className() = className;
}
