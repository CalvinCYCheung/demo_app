import 'package:demo_example/data/models/freezed/route_model.dart';

abstract class BusRepository {
  Future<List<BusRouteModel>> getBusRoutes();
}
