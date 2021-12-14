

import 'package:catcher/handlers/sentry_handler.dart';
import 'package:flutter_starting_app/domain/configuration/env_variables.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

late final String? sentryDSN;

initSentry() async {
  sentryDSN = getEnvKeyOrNull("SENTRY_DSN");
  if(sentryDSN != null) {
    await SentryFlutter.init((options) {
      options.dsn = sentryDSN;
    });
  }
}

SentryHandler? createSentryHandler() {
  if(sentryDSN != null) {
    return SentryHandler(SentryClient(SentryOptions(dsn: sentryDSN)));
  }
  return null;
}