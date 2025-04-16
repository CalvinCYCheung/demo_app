import 'package:demo_example/domain/entities/bus_route_entities.dart';
import 'package:demo_example/domain/usecases/get_bus_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BusRoutesProvider extends AsyncNotifier<List<BusRoute>> {
  @override
  Future<List<BusRoute>> build() async {
    final result = await ref.watch(getAllBusRoutesProvider);
    return result;
  }
}

final busRoutesProvider =
    AsyncNotifierProvider<BusRoutesProvider, List<BusRoute>>(
      () => BusRoutesProvider(),
    );
