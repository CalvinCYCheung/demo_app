import 'package:demo_example/data/datasources/local/mtr_local_datasource.dart';
import 'package:demo_example/data/models/mtr_line_model.dart';
import 'package:demo_example/domain/repositories/mtr_repository.dart';

class MTRRepositoryImpl implements MTRRepository {
  final MTRLocalDatasource _mtrLocalDatasource;

  MTRRepositoryImpl(this._mtrLocalDatasource);

  @override
  Future<List<MTRLineModel>> getMTRRoutes() async {
    return await _mtrLocalDatasource.getMTRRoutes();
  }
}
