import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageBuilder {
  static Page buildPage(
    GoRouterState state,
    Widget child,
  ) {
    return MaterialPage(key: state.pageKey, child: child);
  }
}
