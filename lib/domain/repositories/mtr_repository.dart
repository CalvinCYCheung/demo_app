import 'package:demo_example/data/models/mtr_line_model.dart';

abstract class MTRRepository {
  Future<List<MTRLineModel>> getMTRRoutes();
}
