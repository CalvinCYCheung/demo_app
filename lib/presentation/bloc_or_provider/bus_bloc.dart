import 'package:demo_example/domain/entities/bus_route_entities.dart';
import 'package:demo_example/domain/usecases/get_bus_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusRoutesBloc extends Bloc<BusEvent, List<BusRoute>> {
  BusRoutesBloc() : super([]) {
    on<GetAllBusRoutes>((event, emit) async {
      final result = await event.call();
      emit(result);
    });
  }
}
