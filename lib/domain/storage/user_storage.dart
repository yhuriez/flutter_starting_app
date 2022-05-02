

import 'package:flutter_starting_app/models/user.dart';
import 'package:hive/hive.dart';

import '../configuration/hive_configuration.dart';


class UserStorage {

  static const dbName = "user";

  final Box<User> _boxDb;
  
  static Future<Box<User>> createBox(int typeId) async {
    Hive.registerAdapter(JsonTypeAdapter<User>(
        typeId, (json) => User.fromJson(json), (obj) => obj.toJson()));
    return Hive.openBox<User>(dbName);
  }


  UserStorage(this._boxDb);

  User insert(User item) {
    _boxDb.put(item.uid, item);
    return item;
  }

  User update(User item) {
    final newItem = item.copyWith(updatedAt: DateTime.now());
    _boxDb.put(item.uid, newItem);
    return item;
  }

  List<User> get all => _boxDb.values.toList();

  User? get(String uid) => _boxDb.get(uid);

  Future<bool> delete(String uid) async {
    await _boxDb.delete(uid);
    return true;
  }

  List<User> get allSorted {
    final sorted = _boxDb.values.toList()
      ..sort(sortItems);
    return sorted.toList();
  }

  int sortItems(User first, User second) =>
      first.updatedAt.compareTo(second.updatedAt);

  Stream<String> watch() {
    return _boxDb.watch().map((event) => event.key);
  }
}