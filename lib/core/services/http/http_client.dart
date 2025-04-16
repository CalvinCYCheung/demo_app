import 'dart:convert';

import 'package:dartx/dartx.dart';
import 'package:demo_example/core/errors/app_exception.dart';
import 'package:demo_example/core/services/logging/logger_serivce.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum GetArgsType { noArgs, path, paramsWithStart, paramsSeparatorOnly }

typedef JsonData = Map<String, dynamic>;

final httpClientProvider = Provider<HttpClient>(
  (ref) => DioClient(ref.watch(loggerServiceProvider)),
);

abstract class HttpClient {
  Future<JsonData> get(
    String url, {
    Map<String, dynamic>? headers,
    GetArgsType getArgsType = GetArgsType.noArgs,
    Map<String, dynamic>? args,
  });
  Future post(String url, dynamic body, {Map<String, dynamic>? headers});
  Future put(String url, dynamic body, {Map<String, dynamic>? headers});
  Future delete(String url, {Map<String, dynamic>? headers});
}

class DioClient implements HttpClient {
  final dio = Dio();
  final LoggerService logger;

  DioClient(this.logger);

  @override
  Future<dynamic> delete(String url, {Map<String, dynamic>? headers}) async {
    try {
      final response = await dio.delete(url);
      return jsonDecode(response.data);
    } on DioException catch (e, stackTrace) {
      logger.error(e.toString(), stackTrace: stackTrace);
      throw NetworkException(message: e.message ?? 'Unknown error');
    } catch (e, stackTrace) {
      logger.error(e.toString(), stackTrace: stackTrace);
      throw UnknownException(message: e.toString());
    }
  }

  @override
  Future<JsonData> get(
    String url, {
    Map<String, dynamic>? headers,
    GetArgsType getArgsType = GetArgsType.noArgs,
    Map<String, dynamic>? args,
  }) async {
    try {
      String convertedUrl = url;
      if (getArgsType == GetArgsType.path) {
        convertedUrl = url + _GetConverter.getConvertPath(args ?? {});
      }
      if (getArgsType == GetArgsType.paramsWithStart) {
        convertedUrl = url + _GetConverter.getConvertParams(args ?? {}, true);
      }
      if (getArgsType == GetArgsType.paramsSeparatorOnly) {
        convertedUrl = url + _GetConverter.getConvertParams(args ?? {}, false);
      }
      final response = await dio.get<JsonData>(
        convertedUrl,
        options: Options(headers: headers),
      );
      if (response.data == null) {
        throw NetworkException(message: 'No data');
      }
      // print(response.data);
      return response.data!;
    } on DioException catch (e, stackTrace) {
      logger.error(e.toString(), stackTrace: stackTrace);
      throw NetworkException(message: e.message ?? 'Unknown error');
    } catch (e, stackTrace) {
      logger.error(e.toString(), stackTrace: stackTrace);
      throw UnknownException(message: e.toString());
    }
  }

  @override
  Future<JsonData> post(
    String url,
    dynamic body, {
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await dio.post(
        url,
        data: body,
        options: Options(headers: headers),
      );
      return jsonDecode(response.data) as JsonData;
    } on DioException catch (e, stackTrace) {
      logger.error(e.toString(), stackTrace: stackTrace);
      throw NetworkException(message: e.message ?? 'Unknown error');
    } catch (e, stackTrace) {
      logger.error(e.toString(), stackTrace: stackTrace);
      throw UnknownException(message: e.toString());
    }
  }

  @override
  Future<JsonData> put(
    String url,
    dynamic body, {
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await dio.put(url, data: body);
      return jsonDecode(response.data) as JsonData;
    } on DioException catch (e, stackTrace) {
      logger.error(e.toString(), stackTrace: stackTrace);
      throw NetworkException(message: e.message ?? 'Unknown error');
    } catch (e, stackTrace) {
      logger.error(e.toString(), stackTrace: stackTrace);
      throw UnknownException(message: e.toString());
    }
  }
}

class _GetConverter {
  _GetConverter._();

  static String getConvertPath(Map<String, dynamic> args) {
    String path = '';
    for (var i = 0; i < args.length; i++) {
      if (i != args.length - 1) {
        final entry =
            args.entries.whereIndexed((ele, index) => index == i).first;
        path += '${entry.value}/';
      } else {
        final entry =
            args.entries.whereIndexed((ele, index) => index == i).first;
        path += entry.value;
      }
    }
    return path;
  }

  static String getConvertParams(Map<String, dynamic> args, bool isStart) {
    String params = isStart ? '?' : '&';
    // params += '?';
    for (var i = 0; i < args.length; i++) {
      // if (args.entries.indexed.first.$1 != args.length - 1) {
      if (i != args.length - 1) {
        final arg =
            args.entries.whereIndexed((element, index) => index == i).first;
        params += '${arg.key}=${arg.value}&';
      } else {
        final arg =
            args.entries.whereIndexed((element, index) => index == i).first;
        params += '${arg.key}=${arg.value}';
      }
    }
    return params;
  }
}
