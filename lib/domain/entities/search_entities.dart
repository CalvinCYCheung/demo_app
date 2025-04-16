import 'package:demo_example/core/constants/bus_organization.dart';
import 'package:demo_example/core/errors/app_exception.dart';
import 'package:demo_example/core/errors/app_failure.dart';
import 'package:demo_example/data/models/freezed/route_model.dart';
import 'package:demo_example/domain/entities/bus_route_entities.dart';
import 'package:demo_example/domain/entities/mtr_line_data_entities.dart';
import 'package:demo_example/domain/entities/search_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_entities.freezed.dart';
part 'search_entities.g.dart';

@freezed
abstract class SearchState with _$SearchState {
  const SearchState._();
  factory SearchState({
    required List<SearchRouteEntity> routes,
    List<int>? errorsRoutes,
  }) = _SearchState;

  List<SearchRouteEntity> filteredRoutes(TransportMode transport) {
    if (transport == TransportMode.all) {
      return routes;
    }
    return routes.where((e) {
      final result = switch (e) {
        BusRouteEntity() => TransportMode.bus.boundName,
        MtrRouteEntity() => TransportMode.mtr.boundName,
        MinibusRouteEntity() => TransportMode.miniBus.boundName,
        LightRailRouteEntity() => TransportMode.lightRail.boundName,
        FerryRouteEntity() => TransportMode.ferry.boundName,
        UnknownRouteEntity() => '',
      };
      return result == transport.boundName;
    }).toList();
  }
}

@freezed
sealed class SearchRouteEntity with _$SearchRouteEntity {
  SearchRouteEntity._();
  factory SearchRouteEntity.bus({
    required String routeName,
    required RouteDirection direction,
    required String coName,
    required String orig,
    required String dest,
    String? routeId,
  }) = BusRouteEntity;
  factory SearchRouteEntity.mtr({
    required String routeName,
    required String coName,
    required String orig,
    required String dest,
  }) = MtrRouteEntity;
  factory SearchRouteEntity.minibus({
    required String routeName,
    required String coName,
    required String orig,
    required String dest,
  }) = MinibusRouteEntity;
  factory SearchRouteEntity.lightRail({
    required String routeName,
    required String coName,
    required String orig,
    required String dest,
  }) = LightRailRouteEntity;
  factory SearchRouteEntity.ferry({
    required String routeName,
    required String coName,
    required String orig,
    required String dest,
  }) = FerryRouteEntity;
  factory SearchRouteEntity.unknown({required String routeName}) =
      UnknownRouteEntity;
  factory SearchRouteEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchRouteEntityFromJson(json);

  factory SearchRouteEntity.fromAllRoutes(Object? route) {
    if (route is BusRoute) {
      return route.when(
        kmb:
            (kmb) => SearchRouteEntity.bus(
              routeName: kmb.route,
              direction:
                  kmb.bound == 'I'
                      ? RouteDirection.inbound
                      : RouteDirection.outbound,
              coName: kmb.coName,
              orig: kmb.orig,
              dest: kmb.dest,
            ),
        ctb:
            (ctb) => SearchRouteEntity.bus(
              routeName: ctb.route,
              direction:
                  ctb.bound == 'I'
                      ? RouteDirection.inbound
                      : RouteDirection.outbound,
              coName: ctb.coName,
              orig: ctb.orig,
              dest: ctb.dest,
            ),
        nib:
            (nib) => SearchRouteEntity.bus(
              routeName: nib.routeNo,
              direction: RouteDirection.inbound,
              coName: nib.coName,
              orig: nib.orig,
              dest: nib.dest,
              routeId: nib.routeId,
            ),
      );
    }
    if (route is MTRLineDataEntity) {
      return SearchRouteEntity.mtr(
        routeName: route.line,
        coName: 'MTR',
        orig: route.stations.first.nameTC,
        dest: route.stations.last.nameTC,
      );
    }
    return SearchRouteEntity.unknown(routeName: route.toString());
  }

  factory SearchRouteEntity.fromParams({
    required String routeName,
    required String dir,
    required String coName,
    required TransportMode transportMode,
  }) {
    return switch (transportMode) {
      TransportMode.all =>
        throw UnknownFailure(message: 'Unknown Transport', errorCode: '1002'),
      TransportMode.bus => SearchRouteEntity.bus(
        routeName: routeName,
        direction: RouteDirection.values.byName(dir),
        coName: coName,
        orig: '',
        dest: '',
        routeId: '',
      ),
      TransportMode.miniBus => throw UnimplementedError(),
      TransportMode.mtr => SearchRouteEntity.mtr(
        routeName: routeName,
        coName: coName,
        orig: '',
        dest: '',
      ),
      TransportMode.lightRail => throw UnimplementedError(),
      TransportMode.ferry => throw UnimplementedError(),
    };
  }

  String get coName {
    return when(
      bus: (bus) => bus.coName,
      mtr: (mtr) => mtr.coName,
      minibus: (minibus) => minibus.coName,
      lightRail: (lightRail) => lightRail.coName,
      ferry: (ferry) => ferry.coName,
      unknown: (unknown) => 'unknown',
    );
  }

  String get dest {
    return when(
      bus: (bus) => bus.dest,
      mtr: (mtr) => mtr.dest,
      minibus: (minibus) => minibus.dest,
      lightRail: (lightRail) => lightRail.dest,
      ferry: (ferry) => ferry.dest,
      unknown: (unknown) => 'unknown',
    );
  }

  String get orig {
    return when(
      bus: (bus) => bus.orig,
      mtr: (mtr) => mtr.orig,
      minibus: (minibus) => minibus.orig,
      lightRail: (lightRail) => lightRail.orig,
      ferry: (ferry) => ferry.orig,
      unknown: (unknown) => 'unknown',
    );
  }

  RouteDirection get direction {
    return when(
      bus: (bus) => bus.direction,
      mtr: (mtr) => RouteDirection.inbound,
      minibus: (minibus) => RouteDirection.inbound,
      lightRail: (lightRail) => RouteDirection.inbound,
      ferry: (ferry) => RouteDirection.inbound,
      unknown: (unknown) => RouteDirection.inbound,
    );
  }

  TransportMode get transportMode {
    return when(
      bus: (bus) => TransportMode.bus,
      mtr: (mtr) => TransportMode.mtr,
      minibus: (minibus) => TransportMode.miniBus,
      lightRail: (lightRail) => TransportMode.lightRail,
      ferry: (ferry) => TransportMode.ferry,
      unknown: (unknown) => TransportMode.all,
    );
  }

  SearchRouteEntity copy({
    String? routeName,
    String? coName,
    RouteDirection? direction,
    String? orig,
    String? dest,
  }) {
    return when(
      bus:
          (bus) => bus.copyWith(
            routeName: routeName ?? bus.routeName,
            coName: coName ?? bus.coName,
            direction: direction ?? bus.direction,
            orig: orig ?? bus.orig,
            dest: dest ?? bus.dest,
          ),
      mtr:
          (mtr) => mtr.copyWith(
            routeName: routeName ?? mtr.routeName,
            coName: coName ?? mtr.coName,
            orig: orig ?? mtr.orig,
            dest: dest ?? mtr.dest,
          ),
      minibus:
          (minibus) => minibus.copyWith(
            routeName: routeName ?? minibus.routeName,
            coName: coName ?? minibus.coName,
            orig: orig ?? minibus.orig,
            dest: dest ?? minibus.dest,
          ),
      lightRail:
          (lightRail) => lightRail.copyWith(
            routeName: routeName ?? lightRail.routeName,
            coName: coName ?? lightRail.coName,
            orig: orig ?? lightRail.orig,
            dest: dest ?? lightRail.dest,
          ),
      ferry:
          (ferry) => ferry.copyWith(
            routeName: routeName ?? ferry.routeName,
            coName: coName ?? ferry.coName,
            orig: orig ?? ferry.orig,
            dest: dest ?? ferry.dest,
          ),
      unknown: (unknown) => unknown.copyWith(routeName: unknown.routeName),
    );
  }

  B when<B>({
    required B Function(BusRouteEntity busRouteEntity) bus,
    required B Function(MtrRouteEntity mtrRouteEntity) mtr,
    required B Function(MinibusRouteEntity minibusRouteEntity) minibus,
    required B Function(LightRailRouteEntity lightRailRouteEntity) lightRail,
    required B Function(FerryRouteEntity ferryRouteEntity) ferry,
    required B Function(UnknownRouteEntity unknownRouteEntity) unknown,
  }) {
    return switch (this) {
      BusRouteEntity() => bus(this as BusRouteEntity),
      MtrRouteEntity() => mtr(this as MtrRouteEntity),
      MinibusRouteEntity() => minibus(this as MinibusRouteEntity),
      LightRailRouteEntity() => lightRail(this as LightRailRouteEntity),
      FerryRouteEntity() => ferry(this as FerryRouteEntity),
      UnknownRouteEntity() => unknown(this as UnknownRouteEntity),
    };
  }

  Map<String, dynamic> getRouteBusParams(BusOrganization sourceApi) {
    if (this is BusRouteEntity) {
      return switch (sourceApi) {
        BusOrganization.kmb => {
          'route': routeName,
          'direction': (this as BusRouteEntity).direction.name,
          'serviceType': '1',
        },
        BusOrganization.ctb => {
          'coName': 'CTB',
          'route': routeName,
          'direction': (this as BusRouteEntity).direction.name,
        },
        BusOrganization.nib => {
          'action': 'list',
          'routeId': (this as BusRouteEntity).routeId!,
          // 'direction': (this as BusRouteEntity).direction.name,
        },
      };
    }
    throw UnknownException(message: 'unknown route type');
  }
}
