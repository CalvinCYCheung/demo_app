import 'package:demo_example/data/datasources/local/mtr_local_datasource.dart';
import 'package:demo_example/data/models/mtr_line_model.dart';
import 'package:demo_example/domain/repositories/mtr_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MTRRepositoryImpl implements MTRRepository {
  final MTRLocalDatasource _mtrLocalDatasource;

  MTRRepositoryImpl(this._mtrLocalDatasource);

  @override
  Future<List<MTRLineModel>> getMTRRoutes() async {
    return await _mtrLocalDatasource.getMTRRoutes();
  }
}

final mtrRepositoryProvider = Provider<MTRRepository>(
  (ref) => MTRRepositoryImpl(ref.watch(mtrLocalDatasourceProvider)),
);
