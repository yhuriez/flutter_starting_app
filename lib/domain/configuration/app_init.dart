

import 'package:uuid/uuid.dart';

import 'env_variables.dart';
import 'file_path_manager.dart';
import 'hive_configuration.dart';
import 'injection.dart';
import 'sentry_configuration.dart';
import '../repositories/app_user_repository.dart';

Future<void> initDependencies() async {
  await initEnvKeys();
  await initAppDirectory();

  await initSentry();
  await initHive();
  await initDI();
}


// Register dependency injection
Future<void> initDI() async {

  final userBox = await AppUserRepository.createBox(1);

  // Utils
  sl.registerLazySingleton(() => Uuid());

  // Repositories
  sl.registerLazySingleton(() => AppUserRepository(userBox, sl()));
}