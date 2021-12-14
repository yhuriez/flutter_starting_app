
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


const hiveKey = "hive_key";

Future<void> initHive() async {
  await Hive.initFlutter("database");
}

Future<List<int>> getHiveEncryptionKey() async {
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  String? encryptionKey = await secureStorage.read(key: hiveKey);

  if (encryptionKey == null) {
    var key = Hive.generateSecureKey();
    await secureStorage.write(key: hiveKey,
        value: base64UrlEncode(key),
        iOptions: IOSOptions(accessibility: IOSAccessibility.first_unlock));
    encryptionKey = await secureStorage.read(key: hiveKey);
  }

  return base64Url.decode(encryptionKey!); // Should not be null as it is inserted if absent
}

class JsonTypeAdapter<T> extends TypeAdapter<T> {
  final int typeId;
  final T Function(Map<String, dynamic>) fromJson;
  final Map<String, dynamic> Function(T) toJson;

  JsonTypeAdapter(this.typeId, this.fromJson, this.toJson);

  @override
  T read(BinaryReader reader) {
    final jsonMap = jsonDecode(reader.readString());
    return fromJson(jsonMap);
  }

  @override
  void write(BinaryWriter writer, T obj) {
    final jsonStr = jsonEncode(toJson(obj));
    writer.writeString(jsonStr);
  }
}