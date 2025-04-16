import 'package:demo_example/data/datasources/local/bus_local_datasource.dart';
import 'package:demo_example/data/datasources/remote/bus_remote_datasource.dart';
import 'package:demo_example/data/models/freezed/route_model.dart';
import 'package:demo_example/domain/repositories/bus_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BusRepositoryImpl implements BusRepository {
  final BusRemoteDatasource _busRemoteDatasource;
  final BusLocalDatasource _busLocalDatasource;

  BusRepositoryImpl(this._busRemoteDatasource, this._busLocalDatasource);

  @override
  Future<List<BusRouteModel>> getBusRoutes() async {
    return await _busRemoteDatasource.getBusRoutes();
  }
}

final busRepositoryProvider = Provider<BusRepository>(
  (ref) => BusRepositoryImpl(
    ref.watch(busRemoteDatasourceProvider),
    ref.watch(busLocalDatasourceProvider),
  ),
);
