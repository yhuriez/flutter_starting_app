

import 'package:logger/logger.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

final logger = Logger(output: FzLoggerOutput());


class FzLoggerOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    if(event.level == Level.error) {
      Sentry.captureMessage(event.lines.join("\n"));
    }

    for (var line in event.lines) {
      print(line);
    }
  }
}