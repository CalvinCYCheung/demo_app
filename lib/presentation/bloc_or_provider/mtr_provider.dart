import 'package:demo_example/domain/entities/mtr_line_data_entities.dart';
import 'package:demo_example/domain/usecases/get_mtr_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MTRRoutesProvider extends AsyncNotifier<List<MTRLineDataEntity>> {
  @override
  Future<List<MTRLineDataEntity>> build() async {
    final result = await ref.watch(getAllMTRRoutesProvider);
    return result;
  }
}

final mtrRoutesProvider =
    AsyncNotifierProvider<MTRRoutesProvider, List<MTRLineDataEntity>>(
      () => MTRRoutesProvider(),
    );
