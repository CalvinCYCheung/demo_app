import 'dart:async';

import 'package:demo_example/domain/entities/search_entities.dart';
import 'package:demo_example/domain/entities/search_type.dart';
import 'package:demo_example/domain/usecases/search_routes.dart';
import 'package:demo_example/presentation/bloc_or_provider/bus_bloc.dart';
import 'package:demo_example/presentation/bloc_or_provider/mtr_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Type Route Name to search
class SearchQueryCubit extends Cubit<String> {
  SearchQueryCubit() : super('');

  void updateQuery(String query) {
    emit(state + query);
  }

  void clearQuery() {
    emit('');
  }

  void removeLastChar() {
    if (state.isEmpty) return;
    emit(state.substring(0, state.length - 1));
  }
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final BusRoutesBloc busRoutesBloc;
  final MTRRoutesBloc mtrRoutesBloc;
  late final StreamSubscription _busRoutesSubscription;
  late final StreamSubscription _mtrRoutesSubscription;
  final List<SearchRouteEntity> _cachedRoutes = [];

  SearchBloc({
    required this.busRoutesBloc,
    required this.mtrRoutesBloc,
    // required this.validKeyCharacterCubit,
  }) : super(SearchState(routes: [])) {
    _busRoutesSubscription = busRoutesBloc.stream.listen((data) {
      add(SearchUpdateRoute.fromRoute(data));
    });
    _mtrRoutesSubscription = mtrRoutesBloc.stream.listen((data) {
      add(SearchUpdateRoute.fromRoute(data));
    });
    on<SearchUpdateRoute>((event, emit) async {
      _cachedRoutes.addAll([..._cachedRoutes, ...event.routes]);
      emit(SearchState(routes: _cachedRoutes));
    });
    on<SearchTransport>((event, emit) {
      final result = switch (event.transportMode) {
        TransportMode.all => _cachedRoutes,
        TransportMode.bus => _cachedRoutes.whereType<BusRouteEntity>().toList(),
        TransportMode.mtr => _cachedRoutes.whereType<MtrRouteEntity>().toList(),
        TransportMode.ferry =>
          _cachedRoutes.whereType<FerryRouteEntity>().toList(),
        TransportMode.miniBus =>
          _cachedRoutes.whereType<MinibusRouteEntity>().toList(),
        TransportMode.lightRail =>
          _cachedRoutes.whereType<LightRailRouteEntity>().toList(),
      };
      emit(SearchState(routes: result));
    });
    on<SearchRouteName>((event, emit) {
      final list = switch (event.transportMode) {
        TransportMode.all => _cachedRoutes,
        TransportMode.bus => _cachedRoutes.whereType<BusRouteEntity>().toList(),
        TransportMode.mtr => _cachedRoutes.whereType<MtrRouteEntity>().toList(),
        TransportMode.ferry =>
          _cachedRoutes.whereType<FerryRouteEntity>().toList(),
        TransportMode.miniBus =>
          _cachedRoutes.whereType<MinibusRouteEntity>().toList(),
        TransportMode.lightRail =>
          _cachedRoutes.whereType<LightRailRouteEntity>().toList(),
      };
      final result =
          list
              .where((e) => RegExp('^${event.query}').hasMatch(e.routeName))
              .toList();
      emit(SearchState(routes: result));
    });
  }

  @override
  Future<void> close() {
    _busRoutesSubscription.cancel();
    _mtrRoutesSubscription.cancel();
    return super.close();
  }
}

/// change Different Transport List
class TransportModeCubit extends Cubit<TransportMode> {
  TransportModeCubit() : super(TransportMode.all);

  void changeMode(TransportMode mode) {
    emit(mode);
  }
}

class KeyBoardCubit extends Cubit<Set<KeyboardCharacter>> {
  KeyBoardCubit() : super(KeyboardCharacter.values.toSet());

  void changeMode(TransportMode mode) {
    emit(mode.characters);
  }
}

class ValidKeyCharacterCubit extends Cubit<Set<String>> {
  ValidKeyCharacterCubit() : super(TransportMode.all.modeCharacters);

  void updateKeys(
    List<SearchRouteEntity> routes,
    String query,
    TransportMode mode,
  ) {
    if (query.isEmpty) {
      emit(TransportMode.all.modeCharacters);
      return;
    }
    final suffixString =
        routes
            .map((e) {
              if (e.routeName == query) return '';
              final findIndex = e.routeName.indexOf(query);
              if (findIndex == -1) return '';
              return e.routeName.substring(
                (findIndex + query.length),
                e.routeName.length,
              );
            })
            .where((e) => e.isNotEmpty)
            .toSet();
    emit(suffixString);
  }
}
