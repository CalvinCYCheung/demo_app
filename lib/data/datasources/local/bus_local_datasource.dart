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
