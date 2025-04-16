import 'package:demo_example/core/services/http/http_client.dart';
import 'package:demo_example/core/services/logging/logger_serivce.dart';
import 'package:demo_example/data/datasources/local/bus_local_datasource.dart';
import 'package:demo_example/data/datasources/local/mtr_local_datasource.dart';
import 'package:demo_example/data/datasources/remote/bus_remote_datasource.dart';

class DependeniesInjector {
  static DependeniesInjector? _instance;

  factory DependeniesInjector() {
    _instance ??= DependeniesInjector._();
    return _instance!;
  }
  DependeniesInjector._() {
    loggerService = LoggerServiceImpl();
    httpClient = DioClient(loggerService);
    busLocalDatasource = BusLocalDatasource();
    busRemoteDatasource = BusRemoteDatasourceImpl(httpClient);
    mtrLocalDatasource = MTRLocalDatasourceImpl(loggerService);
  }

  late final LoggerService loggerService;
  late final HttpClient httpClient;
  late final BusLocalDatasource busLocalDatasource;
  late final BusRemoteDatasource busRemoteDatasource;
  late final MTRLocalDatasource mtrLocalDatasource;
}
