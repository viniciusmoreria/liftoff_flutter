import 'package:logger/logger.dart' as client;

var logger = client.Logger(
  printer: client.PrettyPrinter(),
);

class Logger {
  static d(String message, {dynamic error, StackTrace? stackTrace}) {
    logger.d({
      message: message,
      error: error,
      stackTrace: stackTrace,
    });
  }

  static e(String message, {dynamic error, StackTrace? stackTrace}) {
    logger.e({
      message: message,
      error: error,
      stackTrace: stackTrace,
    });
  }
}
