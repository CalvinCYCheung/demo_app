import 'package:demo_example/core/navigation/router.dart';
import 'package:demo_example/core/theme/app_theme.dart';
import 'package:demo_example/presentation/bloc_or_provider/search_routes_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodHomeWrapper extends HookConsumerWidget {
  const RiverpodHomeWrapper({super.key, required this.child});
  final StatefulNavigationShell child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchMode = useState(false);
    final queryController = useTextEditingController();
    final themeMode = ref.watch(themeModeProvider);
    useEffect(() {
      searchMode.value = child.currentIndex == 0;
      return null;
    }, [child.currentIndex]);
    useEffect(() {
      final sub = ref.listenManual(queryProvider, (prev, next) {
        queryController.text = next;
      });
      return sub.close;
    }, []);
    return Material(
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 393,
          child: Scaffold(
            appBar: AppBar(
              title:
                  searchMode.value
                      ? Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              ref.read(themeModeProvider.notifier).state =
                                  themeMode == ThemeMode.dark
                                      ? ThemeMode.light
                                      : ThemeMode.dark;
                            },
                            icon: Icon(
                              themeMode == ThemeMode.dark
                                  ? Icons.light_mode
                                  : Icons.dark_mode,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: queryController,
                              decoration: InputDecoration(
                                hintText: 'Search',
                                suffixIcon: Icon(Icons.search),
                              ),
                            ),
                          ),
                        ],
                      )
                      : Text('Riverpod Home Wrapper'),
            ),
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              items:
                  AppRoute.values
                      .map(
                        (e) => BottomNavigationBarItem(
                          icon: Icon(e.icon),
                          label: e.label,
                        ),
                      )
                      .toList(),
              currentIndex: child.currentIndex,
              onTap: (index) => child.goBranch(index),
            ),
          ),
        ),
      ),
    );
  }
}
