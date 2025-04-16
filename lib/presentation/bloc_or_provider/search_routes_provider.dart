import 'package:dartx/dartx.dart';
import 'package:demo_example/core/services/logging/logger_serivce.dart';
import 'package:demo_example/domain/entities/search_entities.dart';
import 'package:demo_example/domain/entities/search_type.dart';
import 'package:demo_example/presentation/bloc_or_provider/bus_provider.dart';
import 'package:demo_example/presentation/bloc_or_provider/mtr_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final transportModeProvider = StateProvider<TransportMode>(
  (ref) => TransportMode.all,
);

final queryProvider = StateProvider<String>((ref) => '');

final validKeyProvider = StateProvider<Set<String>>(
  (ref) => TransportMode.all.modeCharacters,
);

final searchProvider = AsyncNotifierProvider<SearchProvider, SearchState>(
  () => SearchProvider(),
);

class SearchProvider extends AsyncNotifier<SearchState> {
  LoggerService get logger => ref.watch(loggerServiceProvider);

  @override
  Future<SearchState> build() async {
    final allData = [
      ref.watch(busRoutesProvider),
      AsyncValue.data([]),
      ref.watch(mtrRoutesProvider),
    ];

    SearchState tempState = SearchState(routes: []);
    final getErrorData = allData.mapIndexed(
      (i, e) => {(e.runtimeType, i + 1): e.hasError},
    );
    if (getErrorData.any((e) => e.values.any((f) => f == true))) {
      final errorIndex =
          getErrorData
              .where((e) => e.values.any((f) => f == true))
              .map((e) => e.keys.first.$2)
              .toList();
      tempState = tempState.copyWith(errorsRoutes: errorIndex);
      for (final e in errorIndex) {
        allData.removeAt(e);
      }
    }
    List<dynamic> routes = [];
    for (final data in allData) {
      if (data.hasValue) {
        routes.addAll(data.value!);
      }
    }
    tempState = tempState.copyWith(
      routes: routes
          .map(SearchRouteEntity.fromAllRoutes)
          .toList()
          .sortedBy((e) => e.routeName),
    );
    // tempState.routes.sort((a, b) => a.routeName.compareTo(b.routeName));
    return tempState;
  }
}
