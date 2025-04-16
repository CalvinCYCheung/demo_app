import 'package:freezed_annotation/freezed_annotation.dart';

part 'bus_route_entities.freezed.dart';
part 'bus_route_entities.g.dart';

@freezed
sealed class BusRoute with _$BusRoute {
  BusRoute._();
  factory BusRoute.kmb(
    String route,
    String bound,
    @JsonKey(name: 'orig_en') String origEN,
    @JsonKey(name: 'orig_tc') String origTC,
    @JsonKey(name: 'orig_sc') String origSC,
    @JsonKey(name: 'dest_en') String destEN,
    @JsonKey(name: 'dest_tc') String destTC,
    @JsonKey(name: 'dest_sc') String destSC,
  ) = KMBRoute;
  factory BusRoute.ctb(
    String route,
    String bound,
    @JsonKey(name: 'orig_tc') String origTC,
    @JsonKey(name: 'orig_en') String origEN,
    @JsonKey(name: 'dest_tc') String destTC,
    @JsonKey(name: 'dest_en') String destEN,
    @JsonKey(name: 'orig_sc') String origSC,
    @JsonKey(name: 'dest_sc') String destSC,
  ) = CTBRoute;
  factory BusRoute.nib(
    String routeId,
    String routeNo,
    @JsonKey(name: 'routeName_c') String routeNameC,
    @JsonKey(name: 'routeName_s') String routeNameS,
    @JsonKey(name: 'routeName_e') String routeNameE,
    int overnightRoute,
    int specialRoute,
  ) = NIBRoute;

  factory BusRoute.fromJson(Map<String, dynamic> json) =>
      _$BusRouteFromJson(json);

  B when<B>({
    required B Function(KMBRoute kmbRoute) kmb,
    required B Function(CTBRoute ctbRoute) ctb,
    required B Function(NIBRoute nibRoute) nib,
  }) {
    return switch (this) {
      KMBRoute() => kmb(this as KMBRoute),
      CTBRoute() => ctb(this as CTBRoute),
      NIBRoute() => nib(this as NIBRoute),
    };
  }

  String get coName {
    return switch (this) {
      KMBRoute() => 'kmb',
      CTBRoute() => 'ctb',
      NIBRoute() => 'nib',
    };
  }

  String get dest {
    return switch (this) {
      KMBRoute() => (this as KMBRoute).destTC,
      CTBRoute() => (this as CTBRoute).destTC,
      NIBRoute() => (this as NIBRoute).routeNameC.split('\u003E').last.trim(),
    };
  }

  String get orig {
    return switch (this) {
      KMBRoute() => (this as KMBRoute).origTC,
      CTBRoute() => (this as CTBRoute).origTC,
      NIBRoute() => (this as NIBRoute).routeNameC.split('\u003E').first.trim(),
    };
  }

  String get routeName {
    return switch (this) {
      KMBRoute() => (this as KMBRoute).route,
      CTBRoute() => (this as CTBRoute).route,
      NIBRoute() => (this as NIBRoute).routeNo,
    };
  }
}
