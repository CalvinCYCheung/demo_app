import 'package:demo_example/domain/entities/search_entities.dart';
import 'package:demo_example/domain/entities/search_type.dart';
import 'package:demo_example/presentation/bloc_or_provider/search_routes_provider.dart';
import 'package:demo_example/presentation/components/keyboard.dart';
import 'package:demo_example/presentation/components/sliver_header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodSearchPage extends HookConsumerWidget {
  const RiverpodSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final horizontalScrollController = useScrollController();
    final colorScheme = Theme.of(context).colorScheme;

    final validKey = ref.watch(validKeyProvider);
    final transportMode = ref.watch(transportModeProvider);
    final transportModeNotifier = ref.watch(transportModeProvider.notifier);

    final routes = useState<List<SearchRouteEntity>?>(null);

    ref.listen(searchProvider, (prev, next) {
      routes.value = next.value?.routes;
    });

    ref.listen(transportModeProvider, (prev, next) {
      if (next == TransportMode.all) {
        routes.value = ref.watch(searchProvider).value?.routes;
      } else {
        routes.value =
            ref
                .watch(searchProvider)
                .value
                ?.routes
                .where(
                  (e) =>
                      switch (e) {
                        BusRouteEntity() => TransportMode.bus.boundName,
                        MtrRouteEntity() => TransportMode.mtr.boundName,
                        MinibusRouteEntity() => TransportMode.miniBus.boundName,
                        LightRailRouteEntity() =>
                          TransportMode.lightRail.boundName,
                        FerryRouteEntity() => TransportMode.ferry.boundName,
                        UnknownRouteEntity() => '',
                      } ==
                      next.boundName,
                )
                .toList();
      }

      ref.read(validKeyProvider.notifier).state = next.modeCharacters;
    });

    /// listen search query
    ref.listen(queryProvider, (prev, next) {
      final searchState = ref.watch(searchProvider);
      if (next.isEmpty) {
        routes.value = searchState.value?.filteredRoutes(transportMode);
        ref.read(validKeyProvider.notifier).state =
            transportMode.modeCharacters;
        return;
      }
      final regexp = RegExp('^${next.toUpperCase()}');

      final found =
          searchState.value
              ?.filteredRoutes(transportMode)
              .where((e) => regexp.hasMatch(e.routeName))
              .toList() ??
          [];
      final suffixStrings =
          found
              .map((e) {
                if (e.routeName == next) return '';
                final findIndex = e.routeName.indexOf(next);
                if (findIndex == -1) return '';
                return e.routeName.substring(
                  (findIndex + next.length),
                  e.routeName.length,
                );
              })
              .toSet()
              .where((e) => e.isNotEmpty)
              .toSet();
      ref.read(validKeyProvider.notifier).state = suffixStrings;
      routes.value = found;
    });

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
                                    transportMode == e
                                        ? colorScheme.primary
                                        : colorScheme.secondary,
                              ),
                              onPressed: () => transportModeNotifier.state = e,
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
              SliverList.builder(
                itemCount: routes.value?.length ?? 0,
                itemBuilder: (context, index) {
                  final route = routes.value?[index];
                  return ListTile(
                    onTap: () {},
                    leading: RichText(
                      text: TextSpan(
                        text: route?.routeName ?? '',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onPrimary,
                        ),
                        children: [
                          TextSpan(
                            text: '\n${route?.coName ?? ''}',
                            style: TextStyle(
                              fontSize: 12,
                              color: colorScheme.onPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      '往${route?.dest ?? ''}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onPrimary,
                      ),
                    ),
                    subtitle: Text(
                      route?.orig ?? '',
                      style: TextStyle(
                        fontSize: 12,
                        color: colorScheme.onPrimary,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Flexible(
                flex: 60,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      color: colorScheme.tertiary,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: constraints.maxWidth / 3,
                          mainAxisSpacing: 1.2,
                          crossAxisSpacing: 1.2,
                        ),
                        children: [
                          ...List.generate(
                            9,
                            (index) => KeyboardButton.text(
                              isEnabled: validKey.any(
                                (e) =>
                                    RegExp((index + 1).toString()).hasMatch(e),
                              ),
                              onPressed:
                                  (t) =>
                                      ref.read(queryProvider.notifier).state +=
                                          t,
                              text: (index + 1).toString(),
                            ),
                          ),
                          KeyboardButton.icon(
                            isEnabled: ref.watch(queryProvider).isNotEmpty,
                            icon: Icons.dangerous,
                            onPressed:
                                (t) =>
                                    ref.read(queryProvider.notifier).state = '',
                            text: 'reset',
                          ),
                          KeyboardButton.text(
                            isEnabled: validKey.any(
                              (e) => RegExp('0').hasMatch(e),
                            ),
                            onPressed:
                                (t) =>
                                    ref.read(queryProvider.notifier).state += t,
                            text: '0',
                          ),
                          KeyboardButton.icon(
                            isEnabled: ref.watch(queryProvider).isNotEmpty,
                            icon: Icons.backspace,
                            onPressed: (t) {
                              final currentState =
                                  ref.read(queryProvider.notifier).state;
                              if (currentState.isEmpty) return;
                              ref
                                  .read(queryProvider.notifier)
                                  .state = currentState.substring(
                                0,
                                currentState.length - 1,
                              );
                            },
                            text: 'backward',
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: 0.2,
                // color: colorScheme.onPrimary,
              ),
              Flexible(
                flex: 40,
                child: LayoutBuilder(
                  builder:
                      (context, constraints) => Container(
                        color: colorScheme.tertiary,
                        child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: constraints.maxWidth / 2,
                                mainAxisSpacing: 1.2,
                                crossAxisSpacing: 1.2,
                              ),
                          children: [
                            ...KeyboardCharacter.values
                                .where((e) => validKey.contains(e.name))
                                .map(
                                  (char) => KeyboardButton.text(
                                    isEnabled: true,
                                    onPressed:
                                        (t) =>
                                            ref
                                                .read(queryProvider.notifier)
                                                .state += char.name,
                                    text: char.name,
                                  ),
                                ),

                            // .map((e) => KeyboardButton.text(
                            //       isEnabled: true,
                            //       onPressed: (t) => ref
                            //           .read(searchQueryProvider.notifier)
                            //           .state += e.name,
                            //       text: e.name,
                            //     )),
                          ],
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
