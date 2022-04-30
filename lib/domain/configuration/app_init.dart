

import 'package:flutter_starting_app/domain/api/item_api.dart';
import 'package:flutter_starting_app/domain/repositories/item_repository.dart';
import 'package:flutter_starting_app/domain/storage/item_storage.dart';
import 'package:flutter_starting_app/domain/usecases/generate_items.dart';
import 'package:uuid/uuid.dart';

import 'injection.dart';

///
/// Init everything that need to be initialized at start of the application (dependencies, database etc...)
///
Future<void> initApp() async {

  await initDI();
}


///
/// Register all dependencies in the dependency injection system
///
Future<void> initDI() async {

  await initCommons();

  await initStorage();

  await initApi();

  await initRepositories();

  await initUseCases();
}

///
/// Register dependencies that can be common to several classes
///
Future<void> initCommons() async {

  sl.registerLazySingleton(() => Uuid());
}

///
/// Init storage dependencies
///
Future<void> initStorage() async {

  sl.registerLazySingleton(() => ItemStorage());
}

///
/// Init API dependencies
///
Future<void> initApi() async {

  sl.registerLazySingleton(() => ItemApi(sl()));
}

///
/// Init repositories dependencies
///
Future<void> initRepositories() async {

  sl.registerLazySingleton(() => ItemRepository(sl(), sl()));
}

///
/// Init use cases dependencies
///
Future<void> initUseCases() async {

  sl.registerLazySingleton(() => GenerateItemsUseCase(sl()));
}