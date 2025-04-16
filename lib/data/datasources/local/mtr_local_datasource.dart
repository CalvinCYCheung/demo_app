import 'dart:convert';

import 'package:demo_example/core/errors/app_exception.dart';
import 'package:demo_example/core/services/logging/logger_serivce.dart';
import 'package:demo_example/data/models/mtr_line_model.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class MTRLocalDatasource {
  Future<List<MTRLineModel>> getMTRRoutes();
}

class MTRLocalDatasourceImpl implements MTRLocalDatasource {
  final LoggerService logger;

  MTRLocalDatasourceImpl(this.logger);
  @override
  Future<List<MTRLineModel>> getMTRRoutes() async {
    try {
      final result = await rootBundle.loadString('assets/data/mtr_data.json');
      final data = jsonDecode(result);
      return (data as List<dynamic>)
          .map((e) => MTRLineModel.fromJson(e))
          .toList();
    } catch (e, stackTrace) {
      logger.error(e.toString(), stackTrace: stackTrace);
      throw UnknownException(message: e.toString(), errorCode: '10002');
    }
  }
}

final mtrLocalDatasourceProvider = Provider<MTRLocalDatasource>(
  (ref) => MTRLocalDatasourceImpl(ref.watch(loggerServiceProvider)),
);
