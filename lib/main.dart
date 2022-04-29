import 'package:flutter/material.dart';

import '/domain/configuration/app_init.dart';
import 'domain/configuration/app_providers.dart';
import 'views/app.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await initApp();

  final _navigatorKey = GlobalKey<NavigatorState>();

  runApp(AppProviders(child: App(_navigatorKey)));
}
