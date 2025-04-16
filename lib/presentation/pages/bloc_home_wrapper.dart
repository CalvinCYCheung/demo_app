import 'package:demo_example/core/navigation/router.dart';
import 'package:demo_example/core/theme/app_theme.dart';
import 'package:demo_example/data/repositories/bus_repository.dart';
import 'package:demo_example/data/repositories/mtr_repository.dart';
import 'package:demo_example/domain/usecases/get_bus_data.dart';
import 'package:demo_example/domain/usecases/get_mtr_data.dart';
import 'package:demo_example/presentation/bloc_or_provider/bus_bloc.dart';
import 'package:demo_example/presentation/bloc_or_provider/mtr_bloc.dart';
import 'package:demo_example/presentation/bloc_or_provider/search_routes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({super.key, required this.child});
  final StatefulNavigationShell child;

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    context.read<BusRoutesBloc>().add(
      GetAllBusRoutes(context.read<BusRepositoryImpl>()),
    );
    context.read<MTRRoutesBloc>().add(
      GetAllMTRRoutes(context.read<MTRRepositoryImpl>()),
    );
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.child.currentIndex == 0) {
        setState(() {
          searchMode = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 393,
          child: Scaffold(
            appBar: AppBar(
              title:
                  searchMode
                      ? BlocBuilder<SearchQueryCubit, String>(
                        builder: (context, state) {
                          searchController.text = state;
                          return Row(
                            children: [
                              BlocBuilder<ThemeCubit, ThemeMode>(
                                builder:
                                    (context, state) => IconButton(
                                      onPressed: () {
                                        context
                                            .read<ThemeCubit>()
                                            .toggleTheme();
                                      },
                                      icon: Icon(
                                        state == ThemeMode.dark
                                            ? Icons.light_mode
                                            : Icons.dark_mode,
                                      ),
                                    ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    suffixIcon: Icon(Icons.search),
                                  ),
                                  controller: searchController,
                                ),
                              ),
                            ],
                          );
                        },
                      )
                      : const Text('Home'),
            ),
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
              currentIndex: widget.child.currentIndex,
              onTap: (val) {
                setState(() {
                  searchMode = val == 0;
                });
                widget.child.goBranch(val);
              },
            ),
            body: widget.child,
          ),
        ),
      ),
    );
  }
}
