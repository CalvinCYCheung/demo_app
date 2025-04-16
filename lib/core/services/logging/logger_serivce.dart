import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

/// Logger init with await method
/// init on main.dart
Future<void> loggerInit() async {
  logger = Logger(printer: PrettyPrinter());
}

late final Logger logger;

// final logger = Logger(printer: PrettyPrinter());

final loggerServiceProvider = Provider<LoggerService>(
  (ref) => LoggerServiceImpl(),
);

abstract class LoggerService {
  void debug(String message, {StackTrace? stackTrace});
  void info(String message, {StackTrace? stackTrace});
  void warning(String message, {StackTrace? stackTrace});
  void error(String message, {StackTrace? stackTrace});
  void fatal(String message, {StackTrace? stackTrace});
}

class LoggerServiceImpl extends LoggerService {
  // final logger = Logger(printer: PrettyPrinter());

  @override
  void debug(String message, {StackTrace? stackTrace}) {
    // log(message, stackTrace: stackTrace, time: DateTime.now(), level: 2000);
    logger.d(message, stackTrace: stackTrace, time: DateTime.now().toLocal());
  }

  @override
  void info(String message, {StackTrace? stackTrace}) {
    // log(message, stackTrace: stackTrace, time: DateTime.now(), level: 3000);
    logger.i(message, stackTrace: stackTrace, time: DateTime.now().toLocal());
  }

  @override
  void warning(String message, {StackTrace? stackTrace}) {
    // log(message, stackTrace: stackTrace, time: DateTime.now(), level: 4000);
    logger.w(message, stackTrace: stackTrace, time: DateTime.now().toLocal());
  }

  @override
  void error(String message, {StackTrace? stackTrace}) {
    // log(message, stackTrace: stackTrace, time: DateTime.now(), level: 5000);
    logger.e(message, stackTrace: stackTrace, time: DateTime.now().toLocal());
  }

  @override
  void fatal(String message, {StackTrace? stackTrace}) {
    // log(message, stackTrace: stackTrace, time: DateTime.now(), level: 6000);
    logger.f(message, stackTrace: stackTrace, time: DateTime.now().toLocal());
  }
}
