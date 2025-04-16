import 'package:demo_example/core/constants/bus_organization.dart';
import 'package:demo_example/core/services/http/http_client.dart';
import 'package:demo_example/data/models/freezed/route_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BusRemoteDatasource {
  Future<List<BusRouteModel>> getBusRoutes();
  Future<List> getBusStops();
  Future<List> getBusStopsByRoute(route);
  Future<List> getStopEta(String route, String stop, String coName);
  Future<List> getBusRouteByStop(String stop);
  Future<List> getBusRoutePolyline(route);
}

class BusRemoteDatasourceImpl implements BusRemoteDatasource {
  BusRemoteDatasourceImpl(this.httpClient);
  final HttpClient httpClient;

  @override
  Future<List<BusRouteModel>> getBusRoutes() async {
    final result = await Future.wait([
      httpClient.get(
        BusOrganization.kmb.allRoutesAPIUrl,
        getArgsType: GetArgsType.noArgs,
      ),
      httpClient.get(
        BusOrganization.ctb.allRoutesAPIUrl,
        getArgsType: GetArgsType.noArgs,
      ),
      httpClient.get(
        BusOrganization.nib.allRoutesAPIUrl,
        getArgsType: GetArgsType.paramsWithStart,
        args: {'action': 'list'},
      ),
    ]);
    // print(result);
    final kmbData = result[0];
    final ctbData = result[1];
    final nibData = result[2];
    final kmb =
        (kmbData['data'] as List<dynamic>).map((e) => KMB.fromJson(e)).toList();
    final ctb =
        (ctbData['data'] as List<dynamic>).map((e) => CTB.fromJson(e)).toList();
    final nib =
        (nibData['routes'] as List<dynamic>)
            .map((e) => NIB.fromJson(e))
            .toList();
    return [...kmb, ...ctb, ...nib];
  }

  @override
  Future<List> getBusRouteByStop(String stop) {
    // TODO: implement getBusRouteByStop
    throw UnimplementedError();
  }

  @override
  Future<List> getBusRoutePolyline(route) {
    // TODO: implement getBusRoutePolyline
    throw UnimplementedError();
  }

  @override
  Future<List> getBusStops() {
    // TODO: implement getBusStops
    throw UnimplementedError();
  }

  @override
  Future<List> getBusStopsByRoute(route) {
    // TODO: implement getBusStopsByRoute
    throw UnimplementedError();
  }

  @override
  Future<List> getStopEta(String route, String stop, String coName) {
    // TODO: implement getStopEta
    throw UnimplementedError();
  }
}

final busRemoteDatasourceProvider = Provider<BusRemoteDatasource>(
  (ref) => BusRemoteDatasourceImpl(ref.watch(httpClientProvider)),
);
