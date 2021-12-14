


import 'package:uuid/uuid.dart';

import 'env_variables.dart';
import 'file_path_manager.dart';
import 'hive_configuration.dart';
import 'injection.dart';
import 'sentry_configuration.dart';

Future<void> initDependencies() async {
  await initEnvKeys();
  await initAppDirectory();

  await initSentry();
  await initHive();
  await initDI();
}


// Register dependency injection
Future<void> initDI() async {

  // final documentBox = await FzDocumentRepository.createBox(1);

  // Utils
  sl.registerLazySingleton(() => Uuid());
}