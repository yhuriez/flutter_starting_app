

import 'package:hive/hive.dart';

class SessionStorage {

  static const dbName = "settings";

  static const SessionKey current_user_id_property = "current_user_id";

  static const Map<SessionKey, dynamic> defaultValues = {};

  final Box _boxDb;

  static Future<Box> createBox() async {
    return Hive.openBox(dbName);
  }

  SessionStorage(this._boxDb);

  saveProperty(SessionKey propertyName, dynamic value) {
    _boxDb.put(propertyName, value);
  }

  dynamic getProperty(SessionKey propertyName) {
    return _boxDb.get(propertyName, defaultValue: defaultValues[propertyName]);
  }

  int getIntProperty(SessionKey propertyName) {
    return _boxDb.get(propertyName, defaultValue: defaultValues[propertyName] ?? 0);
  }

  bool getBoolProperty(SessionKey propertyName) {
    return _boxDb.get(propertyName, defaultValue: defaultValues[propertyName] ?? false);
  }

  Map<SessionKey, dynamic> getProperties() {
    return _boxDb.toMap().map((key, value) => MapEntry(key as SessionKey, value));
  }
}

typedef SessionKey = String;