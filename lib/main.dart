import 'package:demo_example/core/navigation/router.dart';
import 'package:demo_example/core/services/dependencies_injector/dependenies_injector.dart';
import 'package:demo_example/core/services/logging/logger_serivce.dart';
import 'package:demo_example/core/theme/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  EquatableConfig.stringify = true;
  usePathUrlStrategy();
  const stateEnv = String.fromEnvironment('STATE_ENV');
  await loggerInit();
  if (stateEnv == '0') {
    runApp(
      MultiBlocProvider(
        providers: [BlocProvider(create: (context) => ThemeCubit())],
        child: BlocApp(),
      ),
    );
  } else {
    runApp(ProviderScope(child: RiverpodApp()));
  }
}

class BlocApp extends StatelessWidget {
  BlocApp({super.key});

  final router = BlocAppRouter();
  final theme = MainTheme();
  final dependeniesInjector = DependeniesInjector();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return MaterialApp.router(
          title: 'Bloc Demo',
          routerConfig: router.router,
          theme: theme.light,
          darkTheme: theme.dark,
          themeMode: context.watch<ThemeCubit>().state,
        );
      },
    );
  }
}

class RiverpodApp extends ConsumerWidget {
  RiverpodApp({super.key});

  final router = RiverpodAppRouter();
  final theme = MainTheme();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Riverpod Demo',
      routerConfig: router.router,
      theme: theme.light,
      darkTheme: theme.dark,
      themeMode: ref.watch(themeModeProvider),
    );
  }
}
