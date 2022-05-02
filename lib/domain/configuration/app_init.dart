

import 'package:flutter_starting_app/domain/configuration/env_variables.dart';
import 'package:uuid/uuid.dart';

import '../api/auth_api.dart';
import '../api/item_api.dart';
import '../api/user_api.dart';
import '../repositories/item_repository.dart';
import '../repositories/user_repository.dart';
import '../storage/item_storage.dart';
import '../storage/session_storage.dart';
import '../storage/user_storage.dart';
import '../usecases/auth/create_account.dart';
import '../usecases/auth/current_user.dart';
import '../usecases/auth/sign_in.dart';
import '../usecases/generate_items.dart';
import 'injection.dart';

///
/// Init everything that need to be initialized at start of the application (dependencies, database etc...)
///
Future<void> initApp() async {

  // TODO Use env variables when required
  final envVariables = await initEnvVariables();

  await _initCommons();

  await _initStorage();

  await _initApi(envVariables);

  await _initRepositories();

  await _initUseCases();
}

///
/// Register dependencies that can be common to several classes
///
Future<void> _initCommons() async {

  sl.registerLazySingleton(() => Uuid());
}

///
/// Init storage dependencies
///
Future<void> _initStorage() async {

  sl.registerLazySingleton(() => SessionStorage());
  sl.registerLazySingleton(() => UserStorage());
  sl.registerLazySingleton(() => ItemStorage());
}

///
/// Init API dependencies
///
Future<void> _initApi(EnvVariables envVariables) async {

  sl.registerLazySingleton(() => AuthApi(sl()));
  sl.registerLazySingleton(() => UserApi());
  sl.registerLazySingleton(() => ItemApi(sl()));
}

///
/// Init repositories dependencies
///
Future<void> _initRepositories() async {

  sl.registerLazySingleton(() => ItemRepository(sl(), sl()));
  sl.registerLazySingleton(() => UserRepository(sl(), sl()));
}

///
/// Init use cases dependencies
///
Future<void> _initUseCases() async {

  // Auth
  sl.registerLazySingleton(() => SignInUseCase(sl(), sl(), sl()));
  sl.registerLazySingleton(() => CreateAccountUseCase(sl(), sl(), sl()));
  sl.registerLazySingleton(() => CurrentUserUseCase(sl(), sl()));

  // Items
  sl.registerLazySingleton(() => GenerateItemsUseCase(sl()));
}