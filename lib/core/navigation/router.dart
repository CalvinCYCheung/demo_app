import 'package:demo_example/core/navigation/page_builder.dart';
import 'package:demo_example/core/services/dependencies_injector/dependenies_injector.dart';
import 'package:demo_example/data/repositories/bus_repository.dart';
import 'package:demo_example/data/repositories/mtr_repository.dart';
import 'package:demo_example/presentation/bloc_or_provider/bus_bloc.dart';
import 'package:demo_example/presentation/bloc_or_provider/mtr_bloc.dart';
import 'package:demo_example/presentation/bloc_or_provider/search_routes_bloc.dart';
import 'package:demo_example/presentation/pages/bloc_home_wrapper.dart';
import 'package:demo_example/presentation/pages/map/map_page.dart';
import 'package:demo_example/presentation/pages/riverpod_home_wrapper.dart';
import 'package:demo_example/presentation/pages/search/bloc_search_page.dart';
import 'package:demo_example/presentation/pages/search/riverpod_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  search,
  map;

  String get path {
    return ['/search', '/map'][index];
  }

  String get label {
    return ['Search', 'Map'][index];
  }

  IconData get icon {
    return [Icons.search, Icons.map][index];
  }
}

class BlocAppRouter {
  late final GoRouter router;

  final navigationKey = GlobalKey<NavigatorState>();
  BlocAppRouter() {
    _init();
  }

  void _init() {
    router = GoRouter(
      navigatorKey: navigationKey,
      initialLocation: AppRoute.search.path,
      routes: [
        StatefulShellRoute.indexedStack(
          parentNavigatorKey: navigationKey,
          pageBuilder:
              (context, state, child) => PageBuilder.buildPage(
                state,
                MultiRepositoryProvider(
                  providers: [
                    RepositoryProvider(
                      create:
                          (_) => BusRepositoryImpl(
                            DependeniesInjector().busRemoteDatasource,
                            DependeniesInjector().busLocalDatasource,
                          ),
                    ),
                    RepositoryProvider(
                      create:
                          (_) => MTRRepositoryImpl(
                            DependeniesInjector().mtrLocalDatasource,
                          ),
                    ),
                  ],
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider(create: (context) => SearchQueryCubit()),
                      BlocProvider(create: (context) => BusRoutesBloc()),
                      BlocProvider(create: (context) => MTRRoutesBloc()),
                    ],
                    child: HomeWrapper(child: child),
                  ),
                ),
              ),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: AppRoute.search.path,
                  path: AppRoute.search.path,
                  builder:
                      (context, state) => MultiBlocProvider(
                        providers: [
                          BlocProvider(
                            create:
                                (context) => SearchBloc(
                                  busRoutesBloc: context.read<BusRoutesBloc>(),
                                  mtrRoutesBloc: context.read<MTRRoutesBloc>(),
                                ),
                          ),
                          BlocProvider(create: (_) => KeyBoardCubit()),
                          BlocProvider(create: (_) => ValidKeyCharacterCubit()),
                          BlocProvider(create: (_) => TransportModeCubit()),
                        ],
                        child: const SearchPageStateFulPage(),
                      ),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: AppRoute.map.path,
                  path: AppRoute.map.path,
                  builder: (context, state) => const MapPage(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class RiverpodAppRouter {
  final navigationKey = GlobalKey<NavigatorState>();
  late final GoRouter router;

  RiverpodAppRouter() {
    _init();
  }

  void _init() {
    router = GoRouter(
      navigatorKey: navigationKey,
      initialLocation: AppRoute.search.path,
      routes: [
        StatefulShellRoute.indexedStack(
          parentNavigatorKey: navigationKey,
          pageBuilder:
              (context, state, child) => PageBuilder.buildPage(
                state,
                RiverpodHomeWrapper(child: child),
              ),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: AppRoute.search.path,
                  path: AppRoute.search.path,
                  builder: (context, state) => const RiverpodSearchPage(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: AppRoute.map.path,
                  path: AppRoute.map.path,
                  builder: (context, state) => const MapPage(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
