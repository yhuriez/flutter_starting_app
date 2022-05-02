

import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<EnvVariables> initEnvVariables() async {
  await dotenv.load(fileName: ".env");
  return EnvVariables();
}

class EnvVariables {

  String get(String key) {
    final value = dotenv.env[key];
    if(value == null) {
      throw Exception("Environment variable $key not defined");
    }
    return value;
  }
}