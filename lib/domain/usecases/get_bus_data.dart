import 'package:demo_example/core/errors/app_exception.dart';
import 'package:demo_example/core/errors/app_failure.dart';
import 'package:demo_example/data/repositories/bus_repository.dart';
import 'package:demo_example/domain/entities/bus_route_entities.dart';
import 'package:demo_example/domain/repositories/bus_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BusEvent {}

class GetAllBusRoutes extends BusEvent {
  final BusRepository busRepository;

  GetAllBusRoutes(this.busRepository);

  Future<List<BusRoute>> call() async {
    try {
      final result = await busRepository.getBusRoutes();
      final data = result.map((e) => BusRoute.fromJson(e.toJson())).toList();
      // print('data: ${data.length}');
      return data;
    } on NetworkException catch (e) {
      throw NetworkFailure(message: e.message, errorCode: '10001');
    } catch (e) {
      throw UnknownFailure(message: e.toString(), errorCode: '10002');
    }
  }
}

class SearchBusRoutes extends BusEvent {
  final String query;

  SearchBusRoutes(this.query);
}

final getAllBusRoutesProvider = Provider<Future<List<BusRoute>>>(
  (ref) => GetAllBusRoutes(ref.watch(busRepositoryProvider)).call(),
);
