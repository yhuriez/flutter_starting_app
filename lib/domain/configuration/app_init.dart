

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

  // Utils
  sl.registerLazySingleton(() => Uuid());
}