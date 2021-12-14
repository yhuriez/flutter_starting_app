import 'package:catcher/catcher.dart';
import 'package:catcher/handlers/console_handler.dart';
import 'package:catcher/mode/dialog_report_mode.dart';
import 'package:catcher/mode/silent_report_mode.dart';
import 'package:catcher/model/catcher_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '/domain/configuration/app_init.dart';

import 'domain/configuration/app_providers.dart';
import 'domain/configuration/logger.dart';
import 'domain/configuration/sentry_configuration.dart';
import 'views/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  final _navigatorKey = GlobalKey<NavigatorState>();

  CatcherOptions debugOptions = _initCatcherOptions();

  Catcher(
    debugConfig: debugOptions,
    navigatorKey: _navigatorKey,
    rootWidget: AppProviderInitializer(child: App(_navigatorKey)),
  );
}

CatcherOptions _initCatcherOptions() {
  if (kDebugMode) {
    logger.i("Catcher in debug mode");
    return CatcherOptions(DialogReportMode(), [ConsoleHandler()]);
  }

  logger.i("Catcher in release mode");
  List<ReportHandler> handlers = [];
  ReportHandler? sentryHandler = createSentryHandler();
  if(sentryHandler != null) {
    handlers.add(sentryHandler);
  }
  return CatcherOptions(SilentReportMode(), handlers);
}
