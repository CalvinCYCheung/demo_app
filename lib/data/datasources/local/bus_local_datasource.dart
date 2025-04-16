import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class LocalBusDatasource {
  Future<List> getBusStops();
}

class BusLocalDatasource implements LocalBusDatasource {
  @override
  Future<List> getBusStops() {
    // TODO: implement getBusStops
    throw UnimplementedError();
  }
}

final busLocalDatasourceProvider = Provider<BusLocalDatasource>(
  (ref) => BusLocalDatasource(),
);
