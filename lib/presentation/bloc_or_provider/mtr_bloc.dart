import 'package:demo_example/domain/entities/mtr_line_data_entities.dart';
import 'package:demo_example/domain/usecases/get_mtr_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MTRRoutesBloc extends Bloc<MTREvent, List<MTRLineDataEntity>> {
  MTRRoutesBloc() : super([]) {
    on<GetAllMTRRoutes>((event, emit) async {
      final result = await event.call();
      emit(result);
    });
  }
}
