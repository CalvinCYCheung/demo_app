import 'package:demo_example/core/navigation/router.dart';
import 'package:demo_example/core/services/dependencies_injector/dependenies_injector.dart';
import 'package:demo_example/core/services/logging/logger_serivce.dart';
import 'package:demo_example/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  usePathUrlStrategy();
  await loggerInit();
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeCubit())],
      child: BlocApp(),
    ),
  );
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
