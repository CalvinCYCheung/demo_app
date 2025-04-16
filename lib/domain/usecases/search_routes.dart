import 'package:demo_example/domain/entities/bus_route_entities.dart';
import 'package:demo_example/domain/entities/mtr_line_data_entities.dart';
import 'package:demo_example/domain/entities/search_entities.dart';
import 'package:demo_example/domain/entities/search_type.dart';

abstract class SearchEvent {}

class SearchRouteName extends SearchEvent {
  final String query;
  final TransportMode transportMode;

  SearchRouteName({required this.query, required this.transportMode});
}

class SearchUpdateRoute extends SearchEvent {
  final List<SearchRouteEntity> routes;
  SearchUpdateRoute({this.routes = const []});

  factory SearchUpdateRoute.fromRoute(Object routes) {
    if (routes is List<BusRoute>) {
      return SearchUpdateRoute(
        routes: routes.map((e) => SearchRouteEntity.fromAllRoutes(e)).toList(),
      );
    }
    if (routes is List<MTRLineDataEntity>) {
      return SearchUpdateRoute(
        routes: routes.map((e) => SearchRouteEntity.fromAllRoutes(e)).toList(),
      );
    }
    return SearchUpdateRoute(routes: []);
  }
}

class SearchTransport extends SearchEvent {
  final TransportMode transportMode;

  SearchTransport({required this.transportMode});
}
