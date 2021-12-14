import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> initEnvKeys() async {
  await dotenv.load(fileName: ".env");
}

String getEnvKey(String key) {
  final value = dotenv.env[key];
  if (value == null) {
    throw Exception("Environment variable $key not defined");
  }
  return value;
}

String? getEnvKeyOrNull(String key) => dotenv.env[key];
