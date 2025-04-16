import 'package:demo_example/domain/entities/search_entities.dart';
import 'package:demo_example/domain/entities/search_type.dart';
import 'package:demo_example/domain/usecases/search_routes.dart';
import 'package:demo_example/presentation/bloc_or_provider/search_routes_bloc.dart';
import 'package:demo_example/presentation/components/keyboard.dart';
import 'package:demo_example/presentation/components/sliver_header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPageStateFulPage extends StatefulWidget {
  const SearchPageStateFulPage({super.key});
  @override
  State<StatefulWidget> createState() => _SearchPageStateFulPageState();
}

class _SearchPageStateFulPageState extends State<SearchPageStateFulPage> {
  final horizontalScrollController = ScrollController();

  @override
  void dispose() {
    horizontalScrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(
                  child: ColoredBox(
                    color: colorScheme.primary,
                    child: Scrollbar(
                      controller: horizontalScrollController,
                      thickness: kIsWeb ? 3 : 0,
                      child: ListView(
                        controller: horizontalScrollController,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...TransportMode.values.map(
                            (e) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(),
                                backgroundColor:
                                    context.watch<TransportModeCubit>().state ==
                                            e
                                        ? colorScheme.primary
                                        : colorScheme.secondary,
                              ),
                              onPressed: () {
                                context.read<TransportModeCubit>().changeMode(
                                  e,
                                );
                              },
                              child: Text(
                                e.displayName,
                                style: TextStyle(color: colorScheme.onPrimary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              MultiBlocListener(
                listeners: [
                  BlocListener<SearchQueryCubit, String>(
                    listener: (context, state) {
                      context.read<SearchBloc>().add(
                        SearchRouteName(
                          query: state,
                          transportMode:
                              context.read<TransportModeCubit>().state,
                        ),
                      );
                    },
                  ),
                  BlocListener<TransportModeCubit, TransportMode>(
                    listener: (context, state) {
                      context.read<SearchBloc>().add(
                        SearchTransport(transportMode: state),
                      );
                      context.read<KeyBoardCubit>().changeMode(state);
                    },
                  ),
                ],
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    return SliverList.builder(
                      itemCount: state.routes.length,
                      itemBuilder: (context, index) {
                        final route = state.routes[index];
                        return ListTile(
                          onTap: () {
                            // print('route: $route');
                            // return;
                            // ref.read(queryRouteStateProvider.notifier).state =
                            //     route!;
                            // RouterHelper.goTo(context, AppRoute.routeDetailPage, {
                            //   "transportMode": route.transportMode.name,
                            //   "coName": route.coName,
                            //   "route": route.routeName,
                            //   "dir": route.direction.name,
                            // }, extra: route);
                            // analyticService.logSelectItem(
                            //   '${route.coName}${route.routeName}',
                            // );
                          },
                          leading: RichText(
                            text: TextSpan(
                              text: route.routeName,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: colorScheme.onPrimary,
                              ),
                              children: [
                                TextSpan(
                                  text: '\n${route.coName}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: colorScheme.onPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: Text(
                            '往${route.dest}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onPrimary,
                            ),
                          ),
                          subtitle: Text(
                            route.orig,
                            style: TextStyle(
                              fontSize: 12,
                              color: colorScheme.onPrimary,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        BlocListener<SearchBloc, SearchState>(
          listener: (context, state) {
            context.read<ValidKeyCharacterCubit>().updateKeys(
              state.routes,
              context.read<SearchQueryCubit>().state,
              context.read<TransportModeCubit>().state,
            );
          },
          child: Expanded(
            child: Row(
              children: [
                Flexible(
                  flex: 60,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        color: colorScheme.tertiary,
                        child: BlocBuilder<ValidKeyCharacterCubit, Set<String>>(
                          builder:
                              (context, state) => GridView(
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent:
                                          constraints.maxWidth / 3,
                                      mainAxisSpacing: 1.2,
                                      crossAxisSpacing: 1.2,
                                    ),
                                children: [
                                  ...List.generate(
                                    9,
                                    (index) => KeyboardButton.text(
                                      isEnabled: state.any(
                                        (e) => RegExp(
                                          (index + 1).toString(),
                                        ).hasMatch(e),
                                      ),
                                      onPressed: (t) {
                                        context
                                            .read<SearchQueryCubit>()
                                            .updateQuery(t);
                                      },
                                      text: (index + 1).toString(),
                                    ),
                                  ),
                                  KeyboardButton.icon(
                                    isEnabled:
                                        context
                                            .read<SearchQueryCubit>()
                                            .state
                                            .isNotEmpty,
                                    icon: Icons.dangerous,
                                    onPressed:
                                        (t) =>
                                            context
                                                .read<SearchQueryCubit>()
                                                .clearQuery(),
                                    text: 'reset',
                                  ),
                                  KeyboardButton.text(
                                    isEnabled: state.any(
                                      (e) =>
                                          RegExp(('0').toString()).hasMatch(e),
                                    ),
                                    onPressed:
                                        (t) => context
                                            .read<SearchQueryCubit>()
                                            .updateQuery(t),
                                    text: '0',
                                  ),
                                  KeyboardButton.icon(
                                    isEnabled:
                                        context
                                            .read<SearchQueryCubit>()
                                            .state
                                            .isNotEmpty,
                                    icon: Icons.backspace,
                                    onPressed:
                                        (t) =>
                                            context
                                                .read<SearchQueryCubit>()
                                                .removeLastChar(),
                                    text: 'backward',
                                  ),
                                ],
                              ),
                        ),
                      );
                    },
                  ),
                ),
                Container(width: 0.2, color: colorScheme.onPrimary),
                Flexible(
                  flex: 40,
                  child: LayoutBuilder(
                    builder:
                        (context, constraints) => Container(
                          color: colorScheme.tertiary,
                          child: BlocBuilder<
                            KeyBoardCubit,
                            Set<KeyboardCharacter>
                          >(
                            builder:
                                (context, keys) => BlocBuilder<
                                  ValidKeyCharacterCubit,
                                  Set<String>
                                >(
                                  builder:
                                      (context, validKeys) => GridView(
                                        gridDelegate:
                                            SliverGridDelegateWithMaxCrossAxisExtent(
                                              maxCrossAxisExtent:
                                                  constraints.maxWidth / 2,
                                              mainAxisSpacing: 1.2,
                                              crossAxisSpacing: 1.2,
                                            ),
                                        children: [
                                          // ...KeyboardCharacter.values
                                          ...keys
                                              .where((e) {
                                                // print(validKeys);
                                                return validKeys.contains(
                                                  e.name,
                                                );
                                              })
                                              .map(
                                                (e) => KeyboardButton.text(
                                                  isEnabled: true,
                                                  onPressed:
                                                      (t) => context
                                                          .read<
                                                            SearchQueryCubit
                                                          >()
                                                          .updateQuery(t),
                                                  text: e.name,
                                                ),
                                              ),
                                        ],
                                      ),
                                ),
                          ),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
