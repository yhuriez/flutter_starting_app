

class SessionStorage {

  static const dbName = "settings";

  static const SessionKey current_user_id_property = "current_user_id";

  static const Map<SessionKey, dynamic> defaultValues = {};

  final Map<SessionKey, dynamic> _boxDb = {};

  saveProperty(SessionKey propertyName, dynamic value) {
    _boxDb[propertyName] = value;
  }

  dynamic getProperty(SessionKey propertyName) {
    return _boxDb[propertyName] ?? defaultValues[propertyName];
  }

  Map<SessionKey, dynamic> getProperties() {
    return _boxDb;
  }
}

typedef SessionKey = String;