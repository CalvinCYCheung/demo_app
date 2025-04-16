import 'package:demo_example/core/errors/app_failure.dart';
import 'package:demo_example/data/repositories/mtr_repository.dart';
import 'package:demo_example/domain/entities/mtr_line_data_entities.dart';
import 'package:demo_example/domain/repositories/mtr_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class MTREvent {}

class GetAllMTRRoutes extends MTREvent {
  final MTRRepository mtrRepository;

  GetAllMTRRoutes(this.mtrRepository);

  Future<List<MTRLineDataEntity>> call() async {
    try {
      final result = await mtrRepository.getMTRRoutes();
      final data =
          result
              .map(
                (e) => MTRLineDataEntity(
                  line: e.line,
                  description: e.description,
                  stations:
                      e.stations
                          .map(
                            (e) => StationEntity(
                              sta: e.sta,
                              nameEN: e.nameEN,
                              nameTC: e.nameTC,
                              nameSC: e.nameSC,
                              latitude: e.latitude,
                              longitude: e.longitude,
                              skipUp: e.skipUp,
                              skipDown: e.skipDown,
                              isInterchange: e.isInterchange,
                            ),
                          )
                          .toList(),
                ),
              )
              .toList();
      return data;
    } catch (e) {
      throw UnknownFailure(message: e.toString(), errorCode: '10002');
    }
  }
}

final getAllMTRRoutesProvider = Provider<Future<List<MTRLineDataEntity>>>(
  (ref) => GetAllMTRRoutes(ref.watch(mtrRepositoryProvider)).call(),
);
