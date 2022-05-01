

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

  sl.registerLazySingleton(() => SessionStorage());
  sl.registerLazySingleton(() => UserStorage());
  sl.registerLazySingleton(() => ItemStorage());
}

///
/// Init API dependencies
///
Future<void> initApi() async {

  sl.registerLazySingleton(() => AuthApi(sl()));
  sl.registerLazySingleton(() => UserApi());
  sl.registerLazySingleton(() => ItemApi(sl()));
}

///
/// Init repositories dependencies
///
Future<void> initRepositories() async {

  sl.registerLazySingleton(() => ItemRepository(sl(), sl()));
  sl.registerLazySingleton(() => UserRepository(sl(), sl()));
}

///
/// Init use cases dependencies
///
Future<void> initUseCases() async {

  // Auth
  sl.registerLazySingleton(() => SignInUseCase(sl(), sl(), sl()));
  sl.registerLazySingleton(() => CreateAccountUseCase(sl(), sl(), sl()));
  sl.registerLazySingleton(() => CurrentUserUseCase(sl(), sl()));

  // Items
  sl.registerLazySingleton(() => GenerateItemsUseCase(sl()));
}